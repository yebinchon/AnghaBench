
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {unsigned int phys_port_cnt; } ;
struct cma_device {int dummy; } ;
struct cma_dev_port_group {unsigned int port_num; int group; struct cma_dev_group* cma_dev_group; } ;
struct cma_dev_group {struct cma_dev_port_group* ports; int ports_group; } ;
typedef int port_str ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct ib_device* cma_get_ib_dev (struct cma_device*) ;
 int cma_port_group_type ;
 int config_group_init_type_name (int *,char*,int *) ;
 int configfs_add_default_group (int *,int *) ;
 struct cma_dev_port_group* kcalloc (unsigned int,int,int ) ;
 int kfree (struct cma_dev_port_group*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int make_cma_ports(struct cma_dev_group *cma_dev_group,
     struct cma_device *cma_dev)
{
 struct ib_device *ibdev;
 unsigned int i;
 unsigned int ports_num;
 struct cma_dev_port_group *ports;
 int err;

 ibdev = cma_get_ib_dev(cma_dev);

 if (!ibdev)
  return -ENODEV;

 ports_num = ibdev->phys_port_cnt;
 ports = kcalloc(ports_num, sizeof(*cma_dev_group->ports),
   GFP_KERNEL);

 if (!ports) {
  err = -ENOMEM;
  goto free;
 }

 for (i = 0; i < ports_num; i++) {
  char port_str[10];

  ports[i].port_num = i + 1;
  snprintf(port_str, sizeof(port_str), "%u", i + 1);
  ports[i].cma_dev_group = cma_dev_group;
  config_group_init_type_name(&ports[i].group,
         port_str,
         &cma_port_group_type);
  configfs_add_default_group(&ports[i].group,
    &cma_dev_group->ports_group);

 }
 cma_dev_group->ports = ports;

 return 0;
free:
 kfree(ports);
 cma_dev_group->ports = ((void*)0);
 return err;
}
