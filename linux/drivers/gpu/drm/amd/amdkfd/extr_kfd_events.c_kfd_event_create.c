
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct kfd_process {int event_mutex; } ;
struct kfd_event {int type; int auto_reset; int signaled; int event_id; int wq; } ;
struct file {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;


 scalar_t__ KFD_MMAP_TYPE_EVENTS ;
 scalar_t__ PAGE_SHIFT ;
 int create_other_event (struct kfd_process*,struct kfd_event*) ;
 int create_signal_event (struct file*,struct kfd_process*,struct kfd_event*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct kfd_event*) ;
 struct kfd_event* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int kfd_event_create(struct file *devkfd, struct kfd_process *p,
       uint32_t event_type, bool auto_reset, uint32_t node_id,
       uint32_t *event_id, uint32_t *event_trigger_data,
       uint64_t *event_page_offset, uint32_t *event_slot_index)
{
 int ret = 0;
 struct kfd_event *ev = kzalloc(sizeof(*ev), GFP_KERNEL);

 if (!ev)
  return -ENOMEM;

 ev->type = event_type;
 ev->auto_reset = auto_reset;
 ev->signaled = 0;

 init_waitqueue_head(&ev->wq);

 *event_page_offset = 0;

 mutex_lock(&p->event_mutex);

 switch (event_type) {
 case 128:
 case 129:
  ret = create_signal_event(devkfd, p, ev);
  if (!ret) {
   *event_page_offset = KFD_MMAP_TYPE_EVENTS;
   *event_page_offset <<= PAGE_SHIFT;
   *event_slot_index = ev->event_id;
  }
  break;
 default:
  ret = create_other_event(p, ev);
  break;
 }

 if (!ret) {
  *event_id = ev->event_id;
  *event_trigger_data = ev->event_id;
 } else {
  kfree(ev);
 }

 mutex_unlock(&p->event_mutex);

 return ret;
}
