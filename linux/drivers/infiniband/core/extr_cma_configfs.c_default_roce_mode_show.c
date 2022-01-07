
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct cma_device {int dummy; } ;
struct cma_dev_port_group {int port_num; } ;
typedef int ssize_t ;


 int cma_configfs_params_get (struct config_item*,struct cma_device**,struct cma_dev_port_group**) ;
 int cma_configfs_params_put (struct cma_device*) ;
 int cma_get_default_gid_type (struct cma_device*,int ) ;
 char* ib_cache_gid_type_str (int) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t default_roce_mode_show(struct config_item *item,
          char *buf)
{
 struct cma_device *cma_dev;
 struct cma_dev_port_group *group;
 int gid_type;
 ssize_t ret;

 ret = cma_configfs_params_get(item, &cma_dev, &group);
 if (ret)
  return ret;

 gid_type = cma_get_default_gid_type(cma_dev, group->port_num);
 cma_configfs_params_put(cma_dev);

 if (gid_type < 0)
  return gid_type;

 return sprintf(buf, "%s\n", ib_cache_gid_type_str(gid_type));
}
