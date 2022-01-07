
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int * start; } ;
struct TYPE_8__ {int sg_cnt; int * sg; int dma; TYPE_1__ tag; } ;
struct TYPE_6__ {int * start; } ;
struct TYPE_7__ {int sg_cnt; int * sg; int dma; TYPE_2__ tag; } ;
struct qup_i2c_dev {int bus_err; TYPE_4__ brx; int dev; TYPE_3__ btx; int xfer; scalar_t__ qup_err; int xfer_timeout; } ;
struct dma_async_tx_descriptor {struct qup_i2c_dev* callback_param; void* callback; } ;
typedef int dma_cookie_t ;


 int DMA_DEV_TO_MEM ;
 int DMA_FROM_DEVICE ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_FENCE ;
 int DMA_PREP_INTERRUPT ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int HZ ;
 int QUP_BAM_FLUSH_STOP ;
 int QUP_BAM_INPUT_EOT ;
 int QUP_I2C_NACK_FLAG ;
 int QUP_RUN_STATE ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 scalar_t__ dma_submit_error (int ) ;
 int dma_unmap_sg (int ,int *,int,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,int *,int,int ,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_all (int ) ;
 void* qup_i2c_bam_cb ;
 scalar_t__ qup_i2c_change_state (struct qup_i2c_dev*,int ) ;
 int qup_i2c_flush (struct qup_i2c_dev*) ;
 int qup_sg_set_buf (int *,int *,int,struct qup_i2c_dev*,int ) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int qup_i2c_bam_schedule_desc(struct qup_i2c_dev *qup)
{
 struct dma_async_tx_descriptor *txd, *rxd = ((void*)0);
 int ret = 0;
 dma_cookie_t cookie_rx, cookie_tx;
 u32 len = 0;
 u32 tx_cnt = qup->btx.sg_cnt, rx_cnt = qup->brx.sg_cnt;


 len = 1;
 if (rx_cnt) {
  qup->btx.tag.start[0] = QUP_BAM_INPUT_EOT;
  len++;


  ret = qup_sg_set_buf(&qup->brx.sg[rx_cnt++],
         &qup->brx.tag.start[0],
         1, qup, DMA_FROM_DEVICE);
  if (ret)
   return ret;
 }

 qup->btx.tag.start[len - 1] = QUP_BAM_FLUSH_STOP;
 ret = qup_sg_set_buf(&qup->btx.sg[tx_cnt++], &qup->btx.tag.start[0],
        len, qup, DMA_TO_DEVICE);
 if (ret)
  return ret;

 txd = dmaengine_prep_slave_sg(qup->btx.dma, qup->btx.sg, tx_cnt,
          DMA_MEM_TO_DEV,
          DMA_PREP_INTERRUPT | DMA_PREP_FENCE);
 if (!txd) {
  dev_err(qup->dev, "failed to get tx desc\n");
  ret = -EINVAL;
  goto desc_err;
 }

 if (!rx_cnt) {
  txd->callback = qup_i2c_bam_cb;
  txd->callback_param = qup;
 }

 cookie_tx = dmaengine_submit(txd);
 if (dma_submit_error(cookie_tx)) {
  ret = -EINVAL;
  goto desc_err;
 }

 dma_async_issue_pending(qup->btx.dma);

 if (rx_cnt) {
  rxd = dmaengine_prep_slave_sg(qup->brx.dma, qup->brx.sg,
           rx_cnt, DMA_DEV_TO_MEM,
           DMA_PREP_INTERRUPT);
  if (!rxd) {
   dev_err(qup->dev, "failed to get rx desc\n");
   ret = -EINVAL;


   dmaengine_terminate_all(qup->btx.dma);
   goto desc_err;
  }

  rxd->callback = qup_i2c_bam_cb;
  rxd->callback_param = qup;
  cookie_rx = dmaengine_submit(rxd);
  if (dma_submit_error(cookie_rx)) {
   ret = -EINVAL;
   goto desc_err;
  }

  dma_async_issue_pending(qup->brx.dma);
 }

 if (!wait_for_completion_timeout(&qup->xfer, qup->xfer_timeout)) {
  dev_err(qup->dev, "normal trans timed out\n");
  ret = -ETIMEDOUT;
 }

 if (ret || qup->bus_err || qup->qup_err) {
  reinit_completion(&qup->xfer);

  if (qup_i2c_change_state(qup, QUP_RUN_STATE)) {
   dev_err(qup->dev, "change to run state timed out");
   goto desc_err;
  }

  qup_i2c_flush(qup);


  if (!wait_for_completion_timeout(&qup->xfer, HZ))
   dev_err(qup->dev, "flush timed out\n");

  ret = (qup->bus_err & QUP_I2C_NACK_FLAG) ? -ENXIO : -EIO;
 }

desc_err:
 dma_unmap_sg(qup->dev, qup->btx.sg, tx_cnt, DMA_TO_DEVICE);

 if (rx_cnt)
  dma_unmap_sg(qup->dev, qup->brx.sg, rx_cnt,
        DMA_FROM_DEVICE);

 return ret;
}
