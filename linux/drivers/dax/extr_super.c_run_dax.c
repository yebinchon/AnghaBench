
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_device {int flags; } ;


 int DAXDEV_ALIVE ;
 int set_bit (int ,int *) ;

void run_dax(struct dax_device *dax_dev)
{
 set_bit(DAXDEV_ALIVE, &dax_dev->flags);
}
