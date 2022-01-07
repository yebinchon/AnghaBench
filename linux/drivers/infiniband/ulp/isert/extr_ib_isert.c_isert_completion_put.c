
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_cmd {scalar_t__ pdu_buf_dma; int pdu_buf_len; } ;
struct iser_tx_desc {int dummy; } ;
struct ib_device {int dummy; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_unmap_single (struct ib_device*,scalar_t__,int ,int ) ;
 int isert_dbg (char*) ;
 int isert_put_cmd (struct isert_cmd*,int) ;
 int isert_unmap_tx_desc (struct iser_tx_desc*,struct ib_device*) ;

__attribute__((used)) static void
isert_completion_put(struct iser_tx_desc *tx_desc, struct isert_cmd *isert_cmd,
       struct ib_device *ib_dev, bool comp_err)
{
 if (isert_cmd->pdu_buf_dma != 0) {
  isert_dbg("unmap single for isert_cmd->pdu_buf_dma\n");
  ib_dma_unmap_single(ib_dev, isert_cmd->pdu_buf_dma,
        isert_cmd->pdu_buf_len, DMA_TO_DEVICE);
  isert_cmd->pdu_buf_dma = 0;
 }

 isert_unmap_tx_desc(tx_desc, ib_dev);
 isert_put_cmd(isert_cmd, comp_err);
}
