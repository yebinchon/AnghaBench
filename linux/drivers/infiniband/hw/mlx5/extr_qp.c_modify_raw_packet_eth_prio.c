
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_ib_sq {int tisn; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_pd {int dummy; } ;
struct TYPE_4__ {int prio; } ;
struct TYPE_3__ {int uid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 TYPE_2__ bitmask ;
 int ctx ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_core_modify_tis (struct mlx5_core_dev*,int ,void*,int) ;
 void* modify_tis_in ;
 int prio ;
 TYPE_1__* to_mpd (struct ib_pd*) ;
 int uid ;

__attribute__((used)) static int modify_raw_packet_eth_prio(struct mlx5_core_dev *dev,
          struct mlx5_ib_sq *sq, u8 sl,
          struct ib_pd *pd)
{
 void *in;
 void *tisc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(modify_tis_in);
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 MLX5_SET(modify_tis_in, in, bitmask.prio, 1);
 MLX5_SET(modify_tis_in, in, uid, to_mpd(pd)->uid);

 tisc = MLX5_ADDR_OF(modify_tis_in, in, ctx);
 MLX5_SET(tisc, tisc, prio, ((sl & 0x7) << 1));

 err = mlx5_core_modify_tis(dev, sq->tisn, in, inlen);

 kvfree(in);

 return err;
}
