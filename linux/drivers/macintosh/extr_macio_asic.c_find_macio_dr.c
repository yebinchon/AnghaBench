
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macio_devres {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct macio_dev {TYPE_1__ ofdev; } ;


 struct macio_devres* devres_find (int *,int ,int *,int *) ;
 int maciom_release ;

__attribute__((used)) static struct macio_devres * find_macio_dr(struct macio_dev *dev)
{
 return devres_find(&dev->ofdev.dev, maciom_release, ((void*)0), ((void*)0));
}
