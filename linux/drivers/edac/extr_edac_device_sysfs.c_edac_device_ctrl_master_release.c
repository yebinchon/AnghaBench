
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct edac_device_ctl_info {int owner; int dev_idx; } ;


 int edac_dbg (int,char*,int ) ;
 int kfree (struct edac_device_ctl_info*) ;
 int module_put (int ) ;
 struct edac_device_ctl_info* to_edacdev (struct kobject*) ;

__attribute__((used)) static void edac_device_ctrl_master_release(struct kobject *kobj)
{
 struct edac_device_ctl_info *edac_dev = to_edacdev(kobj);

 edac_dbg(4, "control index=%d\n", edac_dev->dev_idx);


 module_put(edac_dev->owner);




 kfree(edac_dev);
}
