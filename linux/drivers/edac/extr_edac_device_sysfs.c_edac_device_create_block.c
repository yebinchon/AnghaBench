
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int parent; } ;
struct edac_device_instance {int kobj; int name; } ;
struct edac_device_ctl_info {int kobj; } ;
struct edac_device_block {int nr_attribs; struct kobject kobj; struct edac_dev_sysfs_block_attribute* block_attributes; int name; } ;
struct TYPE_2__ {int name; } ;
struct edac_dev_sysfs_block_attribute {TYPE_1__ attr; } ;


 int ENODEV ;
 int KOBJ_ADD ;
 int edac_dbg (int,char*,struct kobject*,...) ;
 struct kobject* kobject_get (int *) ;
 int kobject_init_and_add (struct kobject*,int *,int *,char*,int ) ;
 int kobject_put (struct kobject*) ;
 int kobject_uevent (struct kobject*,int ) ;
 int ktype_block_ctrl ;
 int memset (struct kobject*,int ,int) ;
 int sysfs_create_file (struct kobject*,TYPE_1__*) ;

__attribute__((used)) static int edac_device_create_block(struct edac_device_ctl_info *edac_dev,
    struct edac_device_instance *instance,
    struct edac_device_block *block)
{
 int i;
 int err;
 struct edac_dev_sysfs_block_attribute *sysfs_attrib;
 struct kobject *main_kobj;

 edac_dbg(4, "Instance '%s' inst_p=%p  block '%s'  block_p=%p\n",
   instance->name, instance, block->name, block);
 edac_dbg(4, "block kobj=%p  block kobj->parent=%p\n",
   &block->kobj, &block->kobj.parent);


 memset(&block->kobj, 0, sizeof(struct kobject));




 main_kobj = kobject_get(&edac_dev->kobj);
 if (!main_kobj) {
  err = -ENODEV;
  goto err_out;
 }


 err = kobject_init_and_add(&block->kobj, &ktype_block_ctrl,
       &instance->kobj,
       "%s", block->name);
 if (err) {
  edac_dbg(1, "Failed to register instance '%s'\n", block->name);
  kobject_put(main_kobj);
  err = -ENODEV;
  goto err_out;
 }




 sysfs_attrib = block->block_attributes;
 if (sysfs_attrib && block->nr_attribs) {
  for (i = 0; i < block->nr_attribs; i++, sysfs_attrib++) {

   edac_dbg(4, "creating block attrib='%s' attrib->%p to kobj=%p\n",
     sysfs_attrib->attr.name,
     sysfs_attrib, &block->kobj);


   err = sysfs_create_file(&block->kobj,
    &sysfs_attrib->attr);
   if (err)
    goto err_on_attrib;
  }
 }
 kobject_uevent(&block->kobj, KOBJ_ADD);

 return 0;


err_on_attrib:
 kobject_put(&block->kobj);

err_out:
 return err;
}
