
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int conn; int ud; } ;
struct TYPE_6__ {scalar_t__ event; TYPE_1__ param; int status; } ;
struct ucma_event {int list; TYPE_2__ resp; struct rdma_cm_id* cm_id; } ;
struct ucma_context {TYPE_4__* file; struct rdma_cm_id* cm_id; int uid; int backlog; } ;
struct rdma_cm_id {scalar_t__ qp_type; int device; struct ucma_context* context; } ;
struct TYPE_7__ {int conn; int ud; } ;
struct rdma_cm_event {scalar_t__ event; TYPE_3__ param; int status; } ;
struct TYPE_8__ {int mut; int poll_wait; int event_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IB_QPT_UD ;
 scalar_t__ RDMA_CM_EVENT_CONNECT_REQUEST ;
 scalar_t__ RDMA_CM_EVENT_DEVICE_REMOVAL ;
 int kfree (struct ucma_event*) ;
 struct ucma_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ucma_copy_conn_event (int *,int *) ;
 int ucma_copy_ud_event (int ,int *,int *) ;
 int ucma_removal_event_handler (struct rdma_cm_id*) ;
 int ucma_set_event_context (struct ucma_context*,struct rdma_cm_event*,struct ucma_event*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int ucma_event_handler(struct rdma_cm_id *cm_id,
         struct rdma_cm_event *event)
{
 struct ucma_event *uevent;
 struct ucma_context *ctx = cm_id->context;
 int ret = 0;

 uevent = kzalloc(sizeof(*uevent), GFP_KERNEL);
 if (!uevent)
  return event->event == RDMA_CM_EVENT_CONNECT_REQUEST;

 mutex_lock(&ctx->file->mut);
 uevent->cm_id = cm_id;
 ucma_set_event_context(ctx, event, uevent);
 uevent->resp.event = event->event;
 uevent->resp.status = event->status;
 if (cm_id->qp_type == IB_QPT_UD)
  ucma_copy_ud_event(cm_id->device, &uevent->resp.param.ud,
       &event->param.ud);
 else
  ucma_copy_conn_event(&uevent->resp.param.conn,
         &event->param.conn);

 if (event->event == RDMA_CM_EVENT_CONNECT_REQUEST) {
  if (!ctx->backlog) {
   ret = -ENOMEM;
   kfree(uevent);
   goto out;
  }
  ctx->backlog--;
 } else if (!ctx->uid || ctx->cm_id != cm_id) {
  if (event->event == RDMA_CM_EVENT_DEVICE_REMOVAL)
   ucma_removal_event_handler(cm_id);

  kfree(uevent);
  goto out;
 }

 list_add_tail(&uevent->list, &ctx->file->event_list);
 wake_up_interruptible(&ctx->file->poll_wait);
 if (event->event == RDMA_CM_EVENT_DEVICE_REMOVAL)
  ucma_removal_event_handler(cm_id);
out:
 mutex_unlock(&ctx->file->mut);
 return ret;
}
