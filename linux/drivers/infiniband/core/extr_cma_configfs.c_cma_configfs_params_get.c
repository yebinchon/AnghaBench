
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
struct cma_device {int dummy; } ;
struct cma_dev_port_group {TYPE_1__* cma_dev_group; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 struct cma_device* cma_enum_devices_by_ibdev (int ,int ) ;
 int filter_by_name ;
 struct cma_dev_port_group* to_dev_port_group (struct config_item*) ;

__attribute__((used)) static int cma_configfs_params_get(struct config_item *item,
       struct cma_device **pcma_dev,
       struct cma_dev_port_group **pgroup)
{
 struct cma_dev_port_group *group = to_dev_port_group(item);
 struct cma_device *cma_dev;

 if (!group)
  return -ENODEV;

 cma_dev = cma_enum_devices_by_ibdev(filter_by_name,
         group->cma_dev_group->name);
 if (!cma_dev)
  return -ENODEV;

 *pcma_dev = cma_dev;
 *pgroup = group;

 return 0;
}
