
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int kobj; int disk; } ;
struct gendisk {struct pblk* private_data; } ;
struct device {int kobj; } ;


 int KOBJ_ADD ;
 struct device* disk_to_dev (int ) ;
 int kobject_get (int *) ;
 int kobject_init_and_add (int *,int *,int ,char*,char*) ;
 int kobject_uevent (int *,int ) ;
 int pblk_err (struct pblk*,char*) ;
 int pblk_ktype ;

int pblk_sysfs_init(struct gendisk *tdisk)
{
 struct pblk *pblk = tdisk->private_data;
 struct device *parent_dev = disk_to_dev(pblk->disk);
 int ret;

 ret = kobject_init_and_add(&pblk->kobj, &pblk_ktype,
     kobject_get(&parent_dev->kobj),
     "%s", "pblk");
 if (ret) {
  pblk_err(pblk, "could not register\n");
  return ret;
 }

 kobject_uevent(&pblk->kobj, KOBJ_ADD);
 return 0;
}
