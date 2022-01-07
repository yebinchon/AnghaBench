
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_sq {int tisn; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_pd {int dummy; } ;
struct TYPE_2__ {int uid; } ;


 int mlx5_cmd_destroy_tis (int ,int ,int ) ;
 TYPE_1__* to_mpd (struct ib_pd*) ;

__attribute__((used)) static void destroy_raw_packet_qp_tis(struct mlx5_ib_dev *dev,
          struct mlx5_ib_sq *sq, struct ib_pd *pd)
{
 mlx5_cmd_destroy_tis(dev->mdev, sq->tisn, to_mpd(pd)->uid);
}
