
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct TYPE_4__ {int num_ports; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;


 int mlx4_ib_tunnels_update (struct mlx4_ib_dev*,int ,int,int) ;
 int mlx4_is_master (TYPE_2__*) ;
 int mlx4_master_func_num (TYPE_2__*) ;

__attribute__((used)) static void mlx4_ib_master_tunnels(struct mlx4_ib_dev *dev, int do_init)
{
 int i;

 if (!mlx4_is_master(dev->dev))
  return;

 for (i = 0; i < dev->dev->caps.num_ports; i++)
  mlx4_ib_tunnels_update(dev, mlx4_master_func_num(dev->dev), i + 1, do_init);
 return;
}
