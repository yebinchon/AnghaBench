
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;
struct hfi1_pportdata {int dd; } ;
struct file {int dummy; } ;


 int THIS_MODULE ;
 int i2c_target (int ) ;
 int module_put (int ) ;
 struct hfi1_pportdata* private2ppd (struct file*) ;
 int release_chip_resource (int ,int ) ;

__attribute__((used)) static int __qsfp_debugfs_release(struct inode *in, struct file *fp, u32 target)
{
 struct hfi1_pportdata *ppd;

 ppd = private2ppd(fp);

 release_chip_resource(ppd->dd, i2c_target(target));
 module_put(THIS_MODULE);

 return 0;
}
