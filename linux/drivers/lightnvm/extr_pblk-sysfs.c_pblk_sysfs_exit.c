
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int kobj; } ;
struct gendisk {struct pblk* private_data; } ;


 int KOBJ_REMOVE ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;

void pblk_sysfs_exit(struct gendisk *tdisk)
{
 struct pblk *pblk = tdisk->private_data;

 kobject_uevent(&pblk->kobj, KOBJ_REMOVE);
 kobject_del(&pblk->kobj);
 kobject_put(&pblk->kobj);
}
