
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ tx_block; } ;
struct slimpro_i2c_dev {int rd_complete; TYPE_1__ mbox_client; int * resp_msg; } ;
struct mbox_client {int dummy; } ;


 int complete (int *) ;
 struct slimpro_i2c_dev* to_slimpro_i2c_dev (struct mbox_client*) ;

__attribute__((used)) static void slimpro_i2c_rx_cb(struct mbox_client *cl, void *mssg)
{
 struct slimpro_i2c_dev *ctx = to_slimpro_i2c_dev(cl);







 if (ctx->resp_msg)
  *ctx->resp_msg = ((u32 *)mssg)[1];

 if (ctx->mbox_client.tx_block)
  complete(&ctx->rd_complete);
}
