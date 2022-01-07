
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct config_item {int dummy; } ;
struct cma_device {int dummy; } ;
struct cma_dev_port_group {int port_num; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ cma_configfs_params_get (struct config_item*,struct cma_device**,struct cma_dev_port_group**) ;
 int cma_configfs_params_put (struct cma_device*) ;
 int cma_get_default_roce_tos (struct cma_device*,int ) ;
 scalar_t__ sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t default_roce_tos_show(struct config_item *item, char *buf)
{
 struct cma_device *cma_dev;
 struct cma_dev_port_group *group;
 ssize_t ret;
 u8 tos;

 ret = cma_configfs_params_get(item, &cma_dev, &group);
 if (ret)
  return ret;

 tos = cma_get_default_roce_tos(cma_dev, group->port_num);
 cma_configfs_params_put(cma_dev);

 return sprintf(buf, "%u\n", tos);
}
