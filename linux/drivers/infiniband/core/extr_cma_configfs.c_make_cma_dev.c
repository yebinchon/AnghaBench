
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;
struct cma_device {int dummy; } ;
struct cma_dev_group {struct config_group device_group; struct config_group ports_group; int name; } ;


 int ENODEV ;
 int ENOMEM ;
 struct config_group* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int cma_deref_dev (struct cma_device*) ;
 int cma_device_group_type ;
 struct cma_device* cma_enum_devices_by_ibdev (int ,void*) ;
 int cma_ports_group_type ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 int configfs_add_default_group (struct config_group*,struct config_group*) ;
 int filter_by_name ;
 int kfree (struct cma_dev_group*) ;
 struct cma_dev_group* kzalloc (int,int ) ;
 int make_cma_ports (struct cma_dev_group*,struct cma_device*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static struct config_group *make_cma_dev(struct config_group *group,
      const char *name)
{
 int err = -ENODEV;
 struct cma_device *cma_dev = cma_enum_devices_by_ibdev(filter_by_name,
              (void *)name);
 struct cma_dev_group *cma_dev_group = ((void*)0);

 if (!cma_dev)
  goto fail;

 cma_dev_group = kzalloc(sizeof(*cma_dev_group), GFP_KERNEL);

 if (!cma_dev_group) {
  err = -ENOMEM;
  goto fail;
 }

 strlcpy(cma_dev_group->name, name, sizeof(cma_dev_group->name));

 config_group_init_type_name(&cma_dev_group->ports_group, "ports",
        &cma_ports_group_type);

 err = make_cma_ports(cma_dev_group, cma_dev);
 if (err)
  goto fail;

 config_group_init_type_name(&cma_dev_group->device_group, name,
        &cma_device_group_type);
 configfs_add_default_group(&cma_dev_group->ports_group,
   &cma_dev_group->device_group);

 cma_deref_dev(cma_dev);
 return &cma_dev_group->device_group;

fail:
 if (cma_dev)
  cma_deref_dev(cma_dev);
 kfree(cma_dev_group);
 return ERR_PTR(err);
}
