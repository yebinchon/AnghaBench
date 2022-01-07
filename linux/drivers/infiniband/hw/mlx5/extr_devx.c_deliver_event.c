
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eqe {int dummy; } ;
struct devx_event_subscription {int cookie; int event_list; struct devx_async_event_file* ev_file; } ;
struct devx_async_event_file {int is_overflow_err; int poll_wait; int lock; int event_list; scalar_t__ omit_data; } ;
struct TYPE_2__ {int out_data; int cookie; } ;
struct devx_async_event_data {int list; TYPE_1__ hdr; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct devx_async_event_data* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int memcpy (int ,void const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int deliver_event(struct devx_event_subscription *event_sub,
    const void *data)
{
 struct devx_async_event_file *ev_file;
 struct devx_async_event_data *event_data;
 unsigned long flags;

 ev_file = event_sub->ev_file;

 if (ev_file->omit_data) {
  spin_lock_irqsave(&ev_file->lock, flags);
  if (!list_empty(&event_sub->event_list)) {
   spin_unlock_irqrestore(&ev_file->lock, flags);
   return 0;
  }

  list_add_tail(&event_sub->event_list, &ev_file->event_list);
  spin_unlock_irqrestore(&ev_file->lock, flags);
  wake_up_interruptible(&ev_file->poll_wait);
  return 0;
 }

 event_data = kzalloc(sizeof(*event_data) + sizeof(struct mlx5_eqe),
        GFP_ATOMIC);
 if (!event_data) {
  spin_lock_irqsave(&ev_file->lock, flags);
  ev_file->is_overflow_err = 1;
  spin_unlock_irqrestore(&ev_file->lock, flags);
  return -ENOMEM;
 }

 event_data->hdr.cookie = event_sub->cookie;
 memcpy(event_data->hdr.out_data, data, sizeof(struct mlx5_eqe));

 spin_lock_irqsave(&ev_file->lock, flags);
 list_add_tail(&event_data->list, &ev_file->event_list);
 spin_unlock_irqrestore(&ev_file->lock, flags);
 wake_up_interruptible(&ev_file->poll_wait);

 return 0;
}
