
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_devres {int res_mask; } ;
struct macio_dev {int n_resources; } ;
struct device {int dummy; } ;


 int macio_release_resource (struct macio_dev*,int) ;
 int min (int ,int) ;
 struct macio_dev* to_macio_device (struct device*) ;

__attribute__((used)) static void maciom_release(struct device *gendev, void *res)
{
 struct macio_dev *dev = to_macio_device(gendev);
 struct macio_devres *dr = res;
 int i, max;

 max = min(dev->n_resources, 32);
 for (i = 0; i < max; i++) {
  if (dr->res_mask & (1 << i))
   macio_release_resource(dev, i);
 }
}
