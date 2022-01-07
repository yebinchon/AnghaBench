
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {int event_free; int event_spinlock; int event_bitmap; int * event; int dev; } ;
struct etnaviv_event {int dummy; } ;


 int EBUSY ;
 int ETNA_NR_EVENTS ;
 int complete (int *) ;
 int dev_err (int ,char*) ;
 int find_first_zero_bit (int ,int ) ;
 int memset (int *,int ,int) ;
 unsigned long msecs_to_jiffies (int) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int event_alloc(struct etnaviv_gpu *gpu, unsigned nr_events,
 unsigned int *events)
{
 unsigned long timeout = msecs_to_jiffies(10 * 10000);
 unsigned i, acquired = 0;

 for (i = 0; i < nr_events; i++) {
  unsigned long ret;

  ret = wait_for_completion_timeout(&gpu->event_free, timeout);

  if (!ret) {
   dev_err(gpu->dev, "wait_for_completion_timeout failed");
   goto out;
  }

  acquired++;
  timeout = ret;
 }

 spin_lock(&gpu->event_spinlock);

 for (i = 0; i < nr_events; i++) {
  int event = find_first_zero_bit(gpu->event_bitmap, ETNA_NR_EVENTS);

  events[i] = event;
  memset(&gpu->event[event], 0, sizeof(struct etnaviv_event));
  set_bit(event, gpu->event_bitmap);
 }

 spin_unlock(&gpu->event_spinlock);

 return 0;

out:
 for (i = 0; i < acquired; i++)
  complete(&gpu->event_free);

 return -EBUSY;
}
