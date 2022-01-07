
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct usif_notify {int reply; scalar_t__ route; int enabled; TYPE_5__* p; scalar_t__ token; } ;
struct nvif_notify_rep_v0 {int version; scalar_t__ route; scalar_t__ token; } ;
struct drm_file {scalar_t__ event_space; int event_wait; int event_list; TYPE_1__* minor; } ;
struct drm_device {int event_lock; } ;
struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_9__ {TYPE_3__ base; int * data; } ;
struct TYPE_7__ {int link; struct drm_file* file_priv; } ;
struct TYPE_10__ {TYPE_4__ e; TYPE_2__ base; } ;
struct TYPE_6__ {struct drm_device* dev; } ;


 int BUG () ;
 int BUG_ON (int) ;
 scalar_t__ NVDRM_NOTIFY_USIF ;
 int NVIF_NOTIFY_DROP ;
 scalar_t__ WARN_ON (int) ;
 int atomic_set (int *,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,void const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

int
usif_notify(const void *header, u32 length, const void *data, u32 size)
{
 struct usif_notify *ntfy = ((void*)0);
 const union {
  struct nvif_notify_rep_v0 v0;
 } *rep = header;
 struct drm_device *dev;
 struct drm_file *filp;
 unsigned long flags;

 if (length == sizeof(rep->v0) && rep->v0.version == 0) {
  if (WARN_ON(!(ntfy = (void *)(unsigned long)rep->v0.token)))
   return NVIF_NOTIFY_DROP;
  BUG_ON(rep->v0.route != NVDRM_NOTIFY_USIF);
 } else
 if (WARN_ON(1))
  return NVIF_NOTIFY_DROP;

 if (WARN_ON(!ntfy->p || ntfy->reply != (length + size)))
  return NVIF_NOTIFY_DROP;
 filp = ntfy->p->base.file_priv;
 dev = filp->minor->dev;

 memcpy(&ntfy->p->e.data[0], header, length);
 memcpy(&ntfy->p->e.data[length], data, size);
 switch (rep->v0.version) {
 case 0: {
  struct nvif_notify_rep_v0 *rep = (void *)ntfy->p->e.data;
  rep->route = ntfy->route;
  rep->token = ntfy->token;
 }
  break;
 default:
  BUG();
  break;
 }

 spin_lock_irqsave(&dev->event_lock, flags);
 if (!WARN_ON(filp->event_space < ntfy->p->e.base.length)) {
  list_add_tail(&ntfy->p->base.link, &filp->event_list);
  filp->event_space -= ntfy->p->e.base.length;
 }
 wake_up_interruptible(&filp->event_wait);
 spin_unlock_irqrestore(&dev->event_lock, flags);
 atomic_set(&ntfy->enabled, 0);
 return NVIF_NOTIFY_DROP;
}
