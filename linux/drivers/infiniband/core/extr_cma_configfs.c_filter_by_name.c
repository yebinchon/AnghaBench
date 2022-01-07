
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dev; } ;


 int dev_name (int *) ;
 int strcmp (int ,void*) ;

__attribute__((used)) static bool filter_by_name(struct ib_device *ib_dev, void *cookie)
{
 return !strcmp(dev_name(&ib_dev->dev), cookie);
}
