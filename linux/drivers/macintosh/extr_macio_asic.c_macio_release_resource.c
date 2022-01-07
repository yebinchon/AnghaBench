
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_devres {int res_mask; } ;
struct macio_dev {int dummy; } ;


 struct macio_devres* find_macio_dr (struct macio_dev*) ;
 scalar_t__ macio_resource_len (struct macio_dev*,int) ;
 int macio_resource_start (struct macio_dev*,int) ;
 int release_mem_region (int ,scalar_t__) ;

void macio_release_resource(struct macio_dev *dev, int resource_no)
{
 struct macio_devres *dr = find_macio_dr(dev);

 if (macio_resource_len(dev, resource_no) == 0)
  return;
 release_mem_region(macio_resource_start(dev, resource_no),
      macio_resource_len(dev, resource_no));
 if (dr && resource_no < 32)
  dr->res_mask &= ~(1 << resource_no);
}
