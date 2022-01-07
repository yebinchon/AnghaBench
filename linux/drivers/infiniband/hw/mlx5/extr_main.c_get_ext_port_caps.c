
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int num_ports; } ;


 int mlx5_query_ext_port_caps (struct mlx5_ib_dev*,int) ;

__attribute__((used)) static void get_ext_port_caps(struct mlx5_ib_dev *dev)
{
 int port;

 for (port = 1; port <= dev->num_ports; port++)
  mlx5_query_ext_port_caps(dev, port);
}
