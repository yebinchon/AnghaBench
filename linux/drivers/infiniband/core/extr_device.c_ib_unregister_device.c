
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dev; } ;


 int __ib_unregister_device (struct ib_device*) ;
 int get_device (int *) ;
 int put_device (int *) ;

void ib_unregister_device(struct ib_device *ib_dev)
{
 get_device(&ib_dev->dev);
 __ib_unregister_device(ib_dev);
 put_device(&ib_dev->dev);
}
