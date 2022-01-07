
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct edac_device_instance {int name; int nr_blocks; struct kobject kobj; int * blocks; struct edac_device_ctl_info* ctl; } ;
struct edac_device_ctl_info {int kobj; struct edac_device_instance* instances; } ;


 int ENODEV ;
 int KOBJ_ADD ;
 int edac_dbg (int,char*,int,...) ;
 int edac_device_create_block (struct edac_device_ctl_info*,struct edac_device_instance*,int *) ;
 int edac_device_delete_block (struct edac_device_ctl_info*,int *) ;
 struct kobject* kobject_get (int *) ;
 int kobject_init_and_add (struct kobject*,int *,int *,char*,int) ;
 int kobject_put (struct kobject*) ;
 int kobject_uevent (struct kobject*,int ) ;
 int ktype_instance_ctrl ;
 int memset (struct kobject*,int ,int) ;

__attribute__((used)) static int edac_device_create_instance(struct edac_device_ctl_info *edac_dev,
    int idx)
{
 int i, j;
 int err;
 struct edac_device_instance *instance;
 struct kobject *main_kobj;

 instance = &edac_dev->instances[idx];


 memset(&instance->kobj, 0, sizeof(struct kobject));

 instance->ctl = edac_dev;




 main_kobj = kobject_get(&edac_dev->kobj);
 if (!main_kobj) {
  err = -ENODEV;
  goto err_out;
 }


 err = kobject_init_and_add(&instance->kobj, &ktype_instance_ctrl,
       &edac_dev->kobj, "%s", instance->name);
 if (err != 0) {
  edac_dbg(2, "Failed to register instance '%s'\n",
    instance->name);
  kobject_put(main_kobj);
  goto err_out;
 }

 edac_dbg(4, "now register '%d' blocks for instance %d\n",
   instance->nr_blocks, idx);


 for (i = 0; i < instance->nr_blocks; i++) {
  err = edac_device_create_block(edac_dev, instance,
      &instance->blocks[i]);
  if (err) {

   for (j = 0; j < i; j++)
    edac_device_delete_block(edac_dev,
       &instance->blocks[j]);
   goto err_release_instance_kobj;
  }
 }
 kobject_uevent(&instance->kobj, KOBJ_ADD);

 edac_dbg(4, "Registered instance %d '%s' kobject\n",
   idx, instance->name);

 return 0;


err_release_instance_kobj:
 kobject_put(&instance->kobj);

err_out:
 return err;
}
