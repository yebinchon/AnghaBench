
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_state {int wq; int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void put_device_state(struct device_state *dev_state)
{
 if (atomic_dec_and_test(&dev_state->count))
  wake_up(&dev_state->wq);
}
