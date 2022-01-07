
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slimpro_i2c_dev {int rd_complete; int * resp_msg; struct acpi_pcct_shared_memory* pcc_comm_addr; } ;
struct mbox_client {int dummy; } ;
struct acpi_pcct_shared_memory {int status; } ;


 int PCC_STS_CMD_COMPLETE ;
 int PCC_STS_SCI_DOORBELL ;
 int complete (int *) ;
 struct slimpro_i2c_dev* to_slimpro_i2c_dev (struct mbox_client*) ;
 scalar_t__ xgene_word_tst_and_clr (int *,int ) ;

__attribute__((used)) static void slimpro_i2c_pcc_rx_cb(struct mbox_client *cl, void *msg)
{
 struct slimpro_i2c_dev *ctx = to_slimpro_i2c_dev(cl);
 struct acpi_pcct_shared_memory *generic_comm_base = ctx->pcc_comm_addr;


 if (!xgene_word_tst_and_clr(&generic_comm_base->status,
        PCC_STS_SCI_DOORBELL))
  return;

 if (xgene_word_tst_and_clr(&generic_comm_base->status,
       PCC_STS_CMD_COMPLETE)) {
  msg = generic_comm_base + 1;


  if (ctx->resp_msg)
   *ctx->resp_msg = ((u32 *)msg)[1];

  complete(&ctx->rd_complete);
 }
}
