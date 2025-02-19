
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ifla_vf_stats {void* multicast; void* tx_bytes; void* rx_bytes; void* tx_packets; void* rx_packets; } ;
struct ib_device {int dummy; } ;
struct TYPE_6__ {int packets; } ;
struct TYPE_5__ {int octets; int packets; } ;
struct TYPE_4__ {int octets; int packets; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_GET64_PR (int ,void*,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int mlx5_core_query_vport_counter (struct mlx5_core_dev*,int,int,int ,void*,int) ;
 int query_vport_counter_out ;
 TYPE_3__ received_ib_multicast ;
 TYPE_2__ received_ib_unicast ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;
 TYPE_1__ transmitted_ib_unicast ;

int mlx5_ib_get_vf_stats(struct ib_device *device, int vf,
    u8 port, struct ifla_vf_stats *stats)
{
 int out_sz = MLX5_ST_SZ_BYTES(query_vport_counter_out);
 struct mlx5_core_dev *mdev;
 struct mlx5_ib_dev *dev;
 void *out;
 int err;

 dev = to_mdev(device);
 mdev = dev->mdev;

 out = kzalloc(out_sz, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 err = mlx5_core_query_vport_counter(mdev, 1, vf, port, out, out_sz);
 if (err)
  goto ex;

 stats->rx_packets = MLX5_GET64_PR(query_vport_counter_out, out, received_ib_unicast.packets);
 stats->tx_packets = MLX5_GET64_PR(query_vport_counter_out, out, transmitted_ib_unicast.packets);
 stats->rx_bytes = MLX5_GET64_PR(query_vport_counter_out, out, received_ib_unicast.octets);
 stats->tx_bytes = MLX5_GET64_PR(query_vport_counter_out, out, transmitted_ib_unicast.octets);
 stats->multicast = MLX5_GET64_PR(query_vport_counter_out, out, received_ib_multicast.packets);

ex:
 kfree(out);
 return err;
}
