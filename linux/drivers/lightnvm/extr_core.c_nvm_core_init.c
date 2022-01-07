
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_geo {int all_luns; } ;
struct nvm_dev {int lun_map; int lock; int mlock; int targets; int area_list; struct nvm_geo geo; } ;


 int BITS_TO_LONGS (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kcalloc (int ,int,int ) ;
 int kfree (int ) ;
 int mutex_init (int *) ;
 int nvm_register_map (struct nvm_dev*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int nvm_core_init(struct nvm_dev *dev)
{
 struct nvm_geo *geo = &dev->geo;
 int ret;

 dev->lun_map = kcalloc(BITS_TO_LONGS(geo->all_luns),
     sizeof(unsigned long), GFP_KERNEL);
 if (!dev->lun_map)
  return -ENOMEM;

 INIT_LIST_HEAD(&dev->area_list);
 INIT_LIST_HEAD(&dev->targets);
 mutex_init(&dev->mlock);
 spin_lock_init(&dev->lock);

 ret = nvm_register_map(dev);
 if (ret)
  goto err_fmtype;

 return 0;
err_fmtype:
 kfree(dev->lun_map);
 return ret;
}
