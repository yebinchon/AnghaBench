
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvm_geo {int num_ch; int all_luns; int num_chk; int ws_opt; int ws_min; int vmnt; int minor_ver_id; int major_ver_id; } ;
struct nvm_dev {struct nvm_geo geo; int name; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* identity ) (struct nvm_dev*) ;} ;


 int EINVAL ;
 int nvm_core_init (struct nvm_dev*) ;
 int pr_debug (char*,int ,int ,int ) ;
 int pr_err (char*) ;
 int pr_info (char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ stub1 (struct nvm_dev*) ;

__attribute__((used)) static int nvm_init(struct nvm_dev *dev)
{
 struct nvm_geo *geo = &dev->geo;
 int ret = -EINVAL;

 if (dev->ops->identity(dev)) {
  pr_err("device could not be identified\n");
  goto err;
 }

 pr_debug("ver:%u.%u nvm_vendor:%x\n", geo->major_ver_id,
   geo->minor_ver_id, geo->vmnt);

 ret = nvm_core_init(dev);
 if (ret) {
  pr_err("could not initialize core structures.\n");
  goto err;
 }

 pr_info("registered %s [%u/%u/%u/%u/%u]\n",
   dev->name, dev->geo.ws_min, dev->geo.ws_opt,
   dev->geo.num_chk, dev->geo.all_luns,
   dev->geo.num_ch);
 return 0;
err:
 pr_err("failed to initialize nvm\n");
 return ret;
}
