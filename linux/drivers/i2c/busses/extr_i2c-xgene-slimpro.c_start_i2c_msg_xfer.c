
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tx_block; } ;
struct slimpro_i2c_dev {int* resp_msg; int rd_complete; TYPE_1__ mbox_client; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int MAILBOX_OP_TIMEOUT ;
 int acpi_disabled ;
 int msecs_to_jiffies (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int start_i2c_msg_xfer(struct slimpro_i2c_dev *ctx)
{
 if (ctx->mbox_client.tx_block || !acpi_disabled) {
  if (!wait_for_completion_timeout(&ctx->rd_complete,
       msecs_to_jiffies(MAILBOX_OP_TIMEOUT)))
   return -ETIMEDOUT;
 }


 if (*ctx->resp_msg == 0xffffffff)
  return -ENODEV;

 return 0;
}
