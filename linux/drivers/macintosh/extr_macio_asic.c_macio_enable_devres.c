
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macio_devres {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct macio_dev {TYPE_1__ ofdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct macio_devres* devres_alloc (int ,int,int ) ;
 struct macio_devres* devres_find (int *,int ,int *,int *) ;
 int * devres_get (int *,struct macio_devres*,int *,int *) ;
 int maciom_release ;

int macio_enable_devres(struct macio_dev *dev)
{
 struct macio_devres *dr;

 dr = devres_find(&dev->ofdev.dev, maciom_release, ((void*)0), ((void*)0));
 if (!dr) {
  dr = devres_alloc(maciom_release, sizeof(*dr), GFP_KERNEL);
  if (!dr)
   return -ENOMEM;
 }
 return devres_get(&dev->ofdev.dev, dr, ((void*)0), ((void*)0)) != ((void*)0);
}
