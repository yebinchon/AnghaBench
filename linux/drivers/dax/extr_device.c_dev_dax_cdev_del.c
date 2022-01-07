
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cdev_del (void*) ;

__attribute__((used)) static void dev_dax_cdev_del(void *cdev)
{
 cdev_del(cdev);
}
