
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_ioctl_create {int dev; } ;
struct nvm_dev {int ref; } ;


 int EINVAL ;
 int down_write (int *) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int nvm_create_tgt (struct nvm_dev*,struct nvm_ioctl_create*) ;
 struct nvm_dev* nvm_find_nvm_dev (int ) ;
 int nvm_free ;
 int nvm_lock ;
 int pr_err (char*) ;
 int up_write (int *) ;

__attribute__((used)) static int __nvm_configure_create(struct nvm_ioctl_create *create)
{
 struct nvm_dev *dev;
 int ret;

 down_write(&nvm_lock);
 dev = nvm_find_nvm_dev(create->dev);
 up_write(&nvm_lock);

 if (!dev) {
  pr_err("device not found\n");
  return -EINVAL;
 }

 kref_get(&dev->ref);
 ret = nvm_create_tgt(dev, create);
 if (ret)
  kref_put(&dev->ref, nvm_free);

 return ret;
}
