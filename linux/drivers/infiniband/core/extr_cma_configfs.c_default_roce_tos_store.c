
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
 scalar_t__ cma_set_default_roce_tos (struct cma_device*,int ,int ) ;
 scalar_t__ kstrtou8 (char const*,int ,int *) ;
 scalar_t__ strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t default_roce_tos_store(struct config_item *item,
          const char *buf, size_t count)
{
 struct cma_device *cma_dev;
 struct cma_dev_port_group *group;
 ssize_t ret;
 u8 tos;

 ret = kstrtou8(buf, 0, &tos);
 if (ret)
  return ret;

 ret = cma_configfs_params_get(item, &cma_dev, &group);
 if (ret)
  return ret;

 ret = cma_set_default_roce_tos(cma_dev, group->port_num, tos);
 cma_configfs_params_put(cma_dev);

 return ret ? ret : strnlen(buf, count);
}
