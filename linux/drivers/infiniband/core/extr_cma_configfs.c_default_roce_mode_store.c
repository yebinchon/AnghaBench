
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct cma_device {int dummy; } ;
struct cma_dev_port_group {int port_num; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINVAL ;
 scalar_t__ cma_configfs_params_get (struct config_item*,struct cma_device**,struct cma_dev_port_group**) ;
 int cma_configfs_params_put (struct cma_device*) ;
 scalar_t__ cma_set_default_gid_type (struct cma_device*,int ,int) ;
 int ib_cache_gid_parse_type_str (char const*) ;
 scalar_t__ strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t default_roce_mode_store(struct config_item *item,
           const char *buf, size_t count)
{
 struct cma_device *cma_dev;
 struct cma_dev_port_group *group;
 int gid_type = ib_cache_gid_parse_type_str(buf);
 ssize_t ret;

 if (gid_type < 0)
  return -EINVAL;

 ret = cma_configfs_params_get(item, &cma_dev, &group);
 if (ret)
  return ret;

 ret = cma_set_default_gid_type(cma_dev, group->port_num, gid_type);

 cma_configfs_params_put(cma_dev);

 return !ret ? strnlen(buf, count) : ret;
}
