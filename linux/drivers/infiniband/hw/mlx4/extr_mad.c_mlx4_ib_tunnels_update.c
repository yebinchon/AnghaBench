
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sqps; TYPE_2__* demux; } ;
struct mlx4_ib_dev {TYPE_1__ sriov; int ib_dev; int dev; } ;
struct TYPE_4__ {int * tun; } ;


 int clean_vf_mcast (TYPE_2__*,int) ;
 int create_pv_resources (int *,int,int,int,int ) ;
 int destroy_pv_resources (struct mlx4_ib_dev*,int,int,int ,int) ;
 int mlx4_master_func_num (int ) ;

__attribute__((used)) static int mlx4_ib_tunnels_update(struct mlx4_ib_dev *dev, int slave,
      int port, int do_init)
{
 int ret = 0;

 if (!do_init) {
  clean_vf_mcast(&dev->sriov.demux[port - 1], slave);

  if (slave == mlx4_master_func_num(dev->dev))
   destroy_pv_resources(dev, slave, port,
          dev->sriov.sqps[port - 1], 1);

  destroy_pv_resources(dev, slave, port,
         dev->sriov.demux[port - 1].tun[slave], 1);
  return 0;
 }


 ret = create_pv_resources(&dev->ib_dev, slave, port, 1,
      dev->sriov.demux[port - 1].tun[slave]);


 if (!ret && slave == mlx4_master_func_num(dev->dev))
  ret = create_pv_resources(&dev->ib_dev, slave, port, 0,
       dev->sriov.sqps[port - 1]);
 return ret;
}
