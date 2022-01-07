
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (int*) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int* context_switch_events ;

__attribute__((used)) static int ring_id_to_context_switch_event(unsigned int ring_id)
{
 if (WARN_ON(ring_id >= ARRAY_SIZE(context_switch_events)))
  return -EINVAL;

 return context_switch_events[ring_id];
}
