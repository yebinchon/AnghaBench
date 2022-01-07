
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int unreg_completion; int refcount; } ;


 int complete (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void ib_device_put(struct ib_device *device)
{
 if (refcount_dec_and_test(&device->refcount))
  complete(&device->unreg_completion);
}
