
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_iov_port {int mcgs_parent; } ;
struct mlx4_ib_dev {struct mlx4_ib_iov_port* iov_ports; } ;
struct attribute {int dummy; } ;


 int sysfs_remove_file (int ,struct attribute*) ;

void del_sysfs_port_mcg_attr(struct mlx4_ib_dev *device, int port_num,
  struct attribute *attr)
{
 struct mlx4_ib_iov_port *port = &device->iov_ports[port_num - 1];

 sysfs_remove_file(port->mcgs_parent, attr);
}
