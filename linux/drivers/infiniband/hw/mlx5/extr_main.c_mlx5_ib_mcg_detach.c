
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ib_gid {int raw; } ;
typedef int u16 ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_qp {int qp_num; scalar_t__ pd; int device; } ;
struct TYPE_2__ {int uid; } ;


 int mlx5_cmd_detach_mcg (int ,union ib_gid*,int ,int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int ,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 TYPE_1__* to_mpd (scalar_t__) ;

__attribute__((used)) static int mlx5_ib_mcg_detach(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
 struct mlx5_ib_dev *dev = to_mdev(ibqp->device);
 int err;
 u16 uid;

 uid = ibqp->pd ?
  to_mpd(ibqp->pd)->uid : 0;
 err = mlx5_cmd_detach_mcg(dev->mdev, gid, ibqp->qp_num, uid);
 if (err)
  mlx5_ib_warn(dev, "failed detaching QPN 0x%x, MGID %pI6\n",
        ibqp->qp_num, gid->raw);

 return err;
}
