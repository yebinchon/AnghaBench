
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;
struct hfi1_pportdata {int dd; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int THIS_MODULE ;
 int acquire_chip_resource (int ,int ,int ) ;
 int i2c_target (int ) ;
 int module_put (int ) ;
 struct hfi1_pportdata* private2ppd (struct file*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int __qsfp_debugfs_open(struct inode *in, struct file *fp, u32 target)
{
 struct hfi1_pportdata *ppd;
 int ret;

 if (!try_module_get(THIS_MODULE))
  return -ENODEV;

 ppd = private2ppd(fp);

 ret = acquire_chip_resource(ppd->dd, i2c_target(target), 0);
 if (ret)
  module_put(THIS_MODULE);

 return ret;
}
