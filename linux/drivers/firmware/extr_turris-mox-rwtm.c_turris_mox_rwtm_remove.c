
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mox_rwtm {int mbox; } ;


 int kobject_put (int ) ;
 int mbox_free_channel (int ) ;
 int mox_rwtm_attrs ;
 struct mox_rwtm* platform_get_drvdata (struct platform_device*) ;
 int rwtm_to_kobj (struct mox_rwtm*) ;
 int sysfs_remove_files (int ,int ) ;

__attribute__((used)) static int turris_mox_rwtm_remove(struct platform_device *pdev)
{
 struct mox_rwtm *rwtm = platform_get_drvdata(pdev);

 sysfs_remove_files(rwtm_to_kobj(rwtm), mox_rwtm_attrs);
 kobject_put(rwtm_to_kobj(rwtm));
 mbox_free_channel(rwtm->mbox);

 return 0;
}
