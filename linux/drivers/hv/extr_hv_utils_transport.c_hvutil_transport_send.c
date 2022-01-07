
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int val; int idx; } ;
struct hvutil_transport {scalar_t__ mode; int outmsg_len; void (* on_read ) () ;int lock; int outmsg_q; void* outmsg; TYPE_2__ cn_id; } ;
struct TYPE_3__ {int val; int idx; } ;
struct cn_msg {int len; void* data; TYPE_1__ id; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ HVUTIL_TRANSPORT_CHARDEV ;
 scalar_t__ HVUTIL_TRANSPORT_DESTROY ;
 scalar_t__ HVUTIL_TRANSPORT_INIT ;
 scalar_t__ HVUTIL_TRANSPORT_NETLINK ;
 int cn_netlink_send (struct cn_msg*,int ,int ,int ) ;
 int kfree (struct cn_msg*) ;
 void* kzalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible (int *) ;

int hvutil_transport_send(struct hvutil_transport *hvt, void *msg, int len,
     void (*on_read_cb)(void))
{
 struct cn_msg *cn_msg;
 int ret = 0;

 if (hvt->mode == HVUTIL_TRANSPORT_INIT ||
     hvt->mode == HVUTIL_TRANSPORT_DESTROY) {
  return -EINVAL;
 } else if (hvt->mode == HVUTIL_TRANSPORT_NETLINK) {
  cn_msg = kzalloc(sizeof(*cn_msg) + len, GFP_ATOMIC);
  if (!cn_msg)
   return -ENOMEM;
  cn_msg->id.idx = hvt->cn_id.idx;
  cn_msg->id.val = hvt->cn_id.val;
  cn_msg->len = len;
  memcpy(cn_msg->data, msg, len);
  ret = cn_netlink_send(cn_msg, 0, 0, GFP_ATOMIC);
  kfree(cn_msg);





  if (on_read_cb)
   on_read_cb();
  return ret;
 }

 mutex_lock(&hvt->lock);
 if (hvt->mode != HVUTIL_TRANSPORT_CHARDEV) {
  ret = -EINVAL;
  goto out_unlock;
 }

 if (hvt->outmsg) {

  ret = -EFAULT;
  goto out_unlock;
 }
 hvt->outmsg = kzalloc(len, GFP_KERNEL);
 if (hvt->outmsg) {
  memcpy(hvt->outmsg, msg, len);
  hvt->outmsg_len = len;
  hvt->on_read = on_read_cb;
  wake_up_interruptible(&hvt->outmsg_q);
 } else
  ret = -ENOMEM;
out_unlock:
 mutex_unlock(&hvt->lock);
 return ret;
}
