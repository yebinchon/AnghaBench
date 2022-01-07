
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sg_cnt; } ;
struct TYPE_3__ {scalar_t__ sg_cnt; } ;
struct qup_i2c_dev {int clk_ctl; int is_last; scalar_t__ max_xfer_sg_len; struct i2c_msg* msg; int irq; TYPE_2__ brx; TYPE_1__ btx; scalar_t__ base; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int QUP_BAM_MODE ;
 scalar_t__ QUP_I2C_CLK_CTL ;
 scalar_t__ QUP_IO_MODE ;
 scalar_t__ QUP_MX_INPUT_CNT ;
 scalar_t__ QUP_MX_OUTPUT_CNT ;
 scalar_t__ QUP_OPERATIONAL_MASK ;
 int QUP_REPACK_EN ;
 int QUP_RUN_STATE ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct qup_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int qup_i2c_bam_clear_tag_buffers (struct qup_i2c_dev*) ;
 int qup_i2c_bam_make_desc (struct qup_i2c_dev*,struct i2c_msg*) ;
 int qup_i2c_bam_schedule_desc (struct qup_i2c_dev*) ;
 int qup_i2c_change_state (struct qup_i2c_dev*,int ) ;
 int qup_i2c_req_dma (struct qup_i2c_dev*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int qup_i2c_bam_xfer(struct i2c_adapter *adap, struct i2c_msg *msg,
       int num)
{
 struct qup_i2c_dev *qup = i2c_get_adapdata(adap);
 int ret = 0;
 int idx = 0;

 enable_irq(qup->irq);
 ret = qup_i2c_req_dma(qup);

 if (ret)
  goto out;

 writel(0, qup->base + QUP_MX_INPUT_CNT);
 writel(0, qup->base + QUP_MX_OUTPUT_CNT);


 writel(QUP_REPACK_EN | QUP_BAM_MODE, qup->base + QUP_IO_MODE);


 writel((0x3 << 8), qup->base + QUP_OPERATIONAL_MASK);


 ret = qup_i2c_change_state(qup, QUP_RUN_STATE);
 if (ret)
  goto out;

 writel(qup->clk_ctl, qup->base + QUP_I2C_CLK_CTL);
 qup_i2c_bam_clear_tag_buffers(qup);

 for (idx = 0; idx < num; idx++) {
  qup->msg = msg + idx;
  qup->is_last = idx == (num - 1);

  ret = qup_i2c_bam_make_desc(qup, qup->msg);
  if (ret)
   break;
  if (qup->btx.sg_cnt > qup->max_xfer_sg_len ||
      qup->brx.sg_cnt > qup->max_xfer_sg_len ||
      qup->is_last) {
   ret = qup_i2c_bam_schedule_desc(qup);
   if (ret)
    break;

   qup_i2c_bam_clear_tag_buffers(qup);
  }
 }

out:
 disable_irq(qup->irq);

 qup->msg = ((void*)0);
 return ret;
}
