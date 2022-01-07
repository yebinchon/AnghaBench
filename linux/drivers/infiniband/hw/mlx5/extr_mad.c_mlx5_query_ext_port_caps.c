
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mlx5_ib_dev {TYPE_2__* mdev; } ;
struct ib_smp {int status; int attr_mod; int attr_id; } ;
struct TYPE_4__ {TYPE_1__* port_caps; } ;
struct TYPE_3__ {int ext_port_cap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_ATTR_EXTENDED_PORT_INFO ;
 int MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO ;
 int be16_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int init_query_mad (struct ib_smp*) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 struct ib_smp* kzalloc (int,int ) ;
 int mlx5_MAD_IFC (struct mlx5_ib_dev*,int,int,int,int *,int *,struct ib_smp*,struct ib_smp*) ;

int mlx5_query_ext_port_caps(struct mlx5_ib_dev *dev, u8 port)
{
 struct ib_smp *in_mad = ((void*)0);
 struct ib_smp *out_mad = ((void*)0);
 int err = -ENOMEM;
 u16 packet_error;

 in_mad = kzalloc(sizeof(*in_mad), GFP_KERNEL);
 out_mad = kmalloc(sizeof(*out_mad), GFP_KERNEL);
 if (!in_mad || !out_mad)
  goto out;

 init_query_mad(in_mad);
 in_mad->attr_id = MLX5_ATTR_EXTENDED_PORT_INFO;
 in_mad->attr_mod = cpu_to_be32(port);

 err = mlx5_MAD_IFC(dev, 1, 1, 1, ((void*)0), ((void*)0), in_mad, out_mad);

 packet_error = be16_to_cpu(out_mad->status);

 dev->mdev->port_caps[port - 1].ext_port_cap = (!err && !packet_error) ?
  MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO : 0;

out:
 kfree(in_mad);
 kfree(out_mad);
 return err;
}
