
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {void* param2; void* param1; void* msg; } ;
struct xgene_hwmon_dev {int workq; int kfifo_lock; int async_msg_fifo; int rd_complete; TYPE_1__ sync_msg; scalar_t__ resp_pending; } ;
struct slimpro_resp_msg {int dummy; } ;
struct mbox_client {int dummy; } ;


 scalar_t__ DBG_SUBTYPE_SENSOR_READ ;
 scalar_t__ MSG_SUBTYPE (void*) ;
 scalar_t__ MSG_TYPE (void*) ;
 scalar_t__ MSG_TYPE_DBG ;
 scalar_t__ MSG_TYPE_ERR ;
 scalar_t__ MSG_TYPE_PWRMGMT ;
 scalar_t__ PWRMGMT_SUBTYPE_TPC ;
 scalar_t__ TPC_ALARM ;
 scalar_t__ TPC_CMD (void*) ;
 int complete (int *) ;
 int kfifo_in_spinlocked (int *,void*,int,int *) ;
 int schedule_work (int *) ;
 struct xgene_hwmon_dev* to_xgene_hwmon_dev (struct mbox_client*) ;
 scalar_t__ xgene_hwmon_rx_ready (struct xgene_hwmon_dev*,void*) ;

__attribute__((used)) static void xgene_hwmon_rx_cb(struct mbox_client *cl, void *msg)
{
 struct xgene_hwmon_dev *ctx = to_xgene_hwmon_dev(cl);







 if (xgene_hwmon_rx_ready(ctx, msg) < 0)
  return;
 if (ctx->resp_pending &&
     ((MSG_TYPE(((u32 *)msg)[0]) == MSG_TYPE_ERR) ||
      (MSG_TYPE(((u32 *)msg)[0]) == MSG_TYPE_DBG &&
       MSG_SUBTYPE(((u32 *)msg)[0]) == DBG_SUBTYPE_SENSOR_READ) ||
      (MSG_TYPE(((u32 *)msg)[0]) == MSG_TYPE_PWRMGMT &&
       MSG_SUBTYPE(((u32 *)msg)[0]) == PWRMGMT_SUBTYPE_TPC &&
       TPC_CMD(((u32 *)msg)[0]) == TPC_ALARM))) {
  ctx->sync_msg.msg = ((u32 *)msg)[0];
  ctx->sync_msg.param1 = ((u32 *)msg)[1];
  ctx->sync_msg.param2 = ((u32 *)msg)[2];


  complete(&ctx->rd_complete);

  return;
 }


 kfifo_in_spinlocked(&ctx->async_msg_fifo, msg,
       sizeof(struct slimpro_resp_msg), &ctx->kfifo_lock);

 schedule_work(&ctx->workq);
}
