
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_device {void* private; int flags; } ;


 int DAXDEV_ALIVE ;
 int test_bit (int ,int *) ;

void *dax_get_private(struct dax_device *dax_dev)
{
 if (!test_bit(DAXDEV_ALIVE, &dax_dev->flags))
  return ((void*)0);
 return dax_dev->private;
}
