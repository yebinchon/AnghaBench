
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_device {int dummy; } ;


 int kfree (struct mcb_device*) ;

void mcb_free_dev(struct mcb_device *dev)
{
 kfree(dev);
}
