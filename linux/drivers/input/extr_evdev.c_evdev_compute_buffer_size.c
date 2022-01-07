
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int hint_events_per_packet; } ;


 int EVDEV_BUF_PACKETS ;
 int EVDEV_MIN_BUFFER_SIZE ;
 unsigned int max (int,int ) ;
 unsigned int roundup_pow_of_two (unsigned int) ;

__attribute__((used)) static unsigned int evdev_compute_buffer_size(struct input_dev *dev)
{
 unsigned int n_events =
  max(dev->hint_events_per_packet * EVDEV_BUF_PACKETS,
      EVDEV_MIN_BUFFER_SIZE);

 return roundup_pow_of_two(n_events);
}
