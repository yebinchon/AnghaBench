
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct macio_dev {TYPE_1__ ofdev; } ;


 int put_device (int *) ;

void macio_dev_put(struct macio_dev *dev)
{
 if (dev)
  put_device(&dev->ofdev.dev);
}
