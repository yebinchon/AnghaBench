
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dev_attr_pec ;
 int device_remove_file (void*,int *) ;

__attribute__((used)) static void lm90_remove_pec(void *dev)
{
 device_remove_file(dev, &dev_attr_pec);
}
