
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_gsi_qp {int mutex; int rx_qp; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_qp_attr {int qp_state; } ;
struct ib_qp {int device; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ IB_QPS_RTS ;
 struct mlx5_ib_gsi_qp* gsi_qp (struct ib_qp*) ;
 int ib_modify_qp (int ,struct ib_qp_attr*,int) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setup_qps (struct mlx5_ib_gsi_qp*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 TYPE_1__* to_mqp (int ) ;

int mlx5_ib_gsi_modify_qp(struct ib_qp *qp, struct ib_qp_attr *attr,
     int attr_mask)
{
 struct mlx5_ib_dev *dev = to_mdev(qp->device);
 struct mlx5_ib_gsi_qp *gsi = gsi_qp(qp);
 int ret;

 mlx5_ib_dbg(dev, "modifying GSI QP to state %d\n", attr->qp_state);

 mutex_lock(&gsi->mutex);
 ret = ib_modify_qp(gsi->rx_qp, attr, attr_mask);
 if (ret) {
  mlx5_ib_warn(dev, "unable to modify GSI rx QP: %d\n", ret);
  goto unlock;
 }

 if (to_mqp(gsi->rx_qp)->state == IB_QPS_RTS)
  setup_qps(gsi);

unlock:
 mutex_unlock(&gsi->mutex);

 return ret;
}
