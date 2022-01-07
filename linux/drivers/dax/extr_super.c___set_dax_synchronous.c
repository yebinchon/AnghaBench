
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_device {int flags; } ;


 int DAXDEV_SYNC ;
 int set_bit (int ,int *) ;

void __set_dax_synchronous(struct dax_device *dax_dev)
{
 set_bit(DAXDEV_SYNC, &dax_dev->flags);
}
