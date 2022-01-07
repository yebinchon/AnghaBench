
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {scalar_t__ is_rep; } ;


 int __get_port_caps (struct mlx5_ib_dev*,int) ;

__attribute__((used)) static int get_port_caps(struct mlx5_ib_dev *dev, u8 port)
{



 if (dev->is_rep)
  return __get_port_caps(dev, 1);
 return __get_port_caps(dev, port);
}
