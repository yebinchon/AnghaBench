
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_hwmon_dev {int kfifo_lock; int async_msg_fifo; int resp_pending; int hwmon_dev; } ;
struct slimpro_resp_msg {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int kfifo_in_spinlocked (int *,void*,int,int *) ;

__attribute__((used)) static int xgene_hwmon_rx_ready(struct xgene_hwmon_dev *ctx, void *msg)
{
 if (IS_ERR_OR_NULL(ctx->hwmon_dev) && !ctx->resp_pending) {

  kfifo_in_spinlocked(&ctx->async_msg_fifo, msg,
        sizeof(struct slimpro_resp_msg),
        &ctx->kfifo_lock);
  return -ENODEV;
 }

 return 0;
}
