
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long long uverbs_cmd_mask; unsigned long long uverbs_ex_cmd_mask; int use_cq_dim; int driver_def; } ;
struct TYPE_3__ {int mutex; } ;
struct mlx5_ib_dev {TYPE_2__ ib_dev; TYPE_1__ lb; struct mlx5_core_dev* mdev; int umr_fence; } ;
struct mlx5_core_dev {int dummy; } ;


 int CONFIG_INFINIBAND_USER_ACCESS ;
 int CONFIG_MLX5_CORE_IPOIB ;
 unsigned long long IB_USER_VERBS_CMD_ALLOC_MW ;
 unsigned long long IB_USER_VERBS_CMD_ALLOC_PD ;
 unsigned long long IB_USER_VERBS_CMD_ATTACH_MCAST ;
 unsigned long long IB_USER_VERBS_CMD_CLOSE_XRCD ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_AH ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_CQ ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_QP ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_XSRQ ;
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_MW ;
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_PD ;
 unsigned long long IB_USER_VERBS_CMD_DEREG_MR ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_AH ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_CQ ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_QP ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_DETACH_MCAST ;
 unsigned long long IB_USER_VERBS_CMD_GET_CONTEXT ;
 unsigned long long IB_USER_VERBS_CMD_MODIFY_QP ;
 unsigned long long IB_USER_VERBS_CMD_MODIFY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_OPEN_QP ;
 unsigned long long IB_USER_VERBS_CMD_OPEN_XRCD ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_DEVICE ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_PORT ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_QP ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_REG_MR ;
 unsigned long long IB_USER_VERBS_CMD_REREG_MR ;
 unsigned long long IB_USER_VERBS_CMD_RESIZE_CQ ;
 unsigned long long IB_USER_VERBS_EX_CMD_CREATE_CQ ;
 unsigned long long IB_USER_VERBS_EX_CMD_CREATE_FLOW ;
 unsigned long long IB_USER_VERBS_EX_CMD_CREATE_QP ;
 unsigned long long IB_USER_VERBS_EX_CMD_DESTROY_FLOW ;
 unsigned long long IB_USER_VERBS_EX_CMD_MODIFY_CQ ;
 unsigned long long IB_USER_VERBS_EX_CMD_MODIFY_QP ;
 unsigned long long IB_USER_VERBS_EX_CMD_QUERY_DEVICE ;
 scalar_t__ IS_ENABLED (int ) ;
 int MLX5_ACCEL_IPSEC_CAP_DEVICE ;
 scalar_t__ MLX5_CAP_DEV_MEM (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CAP_GEN_64 (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ;
 int MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM ;
 int disable_local_lb_mc ;
 int disable_local_lb_uc ;
 int general_obj_types ;
 int ib_set_device_ops (TYPE_2__*,int *) ;
 int imaicl ;
 int init_node_data (struct mlx5_ib_dev*) ;
 int ipoib_enhanced_offloads ;
 int memic ;
 int mlx5_accel_ipsec_device_caps (struct mlx5_core_dev*) ;
 scalar_t__ mlx5_core_is_pf (struct mlx5_core_dev*) ;
 int mlx5_get_umr_fence (scalar_t__) ;
 int mlx5_ib_defs ;
 int mlx5_ib_dev_dm_ops ;
 int mlx5_ib_dev_flow_ipsec_ops ;
 int mlx5_ib_dev_ipoib_enhanced_ops ;
 int mlx5_ib_dev_mw_ops ;
 int mlx5_ib_dev_ops ;
 int mlx5_ib_dev_sriov_ops ;
 int mlx5_ib_dev_xrc_ops ;
 int mutex_init (int *) ;
 int port_type ;
 int umr_fence ;
 int xrc ;

__attribute__((used)) static int mlx5_ib_stage_caps_init(struct mlx5_ib_dev *dev)
{
 struct mlx5_core_dev *mdev = dev->mdev;
 int err;

 dev->ib_dev.uverbs_cmd_mask =
  (1ull << IB_USER_VERBS_CMD_GET_CONTEXT) |
  (1ull << IB_USER_VERBS_CMD_QUERY_DEVICE) |
  (1ull << IB_USER_VERBS_CMD_QUERY_PORT) |
  (1ull << IB_USER_VERBS_CMD_ALLOC_PD) |
  (1ull << IB_USER_VERBS_CMD_DEALLOC_PD) |
  (1ull << IB_USER_VERBS_CMD_CREATE_AH) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_AH) |
  (1ull << IB_USER_VERBS_CMD_REG_MR) |
  (1ull << IB_USER_VERBS_CMD_REREG_MR) |
  (1ull << IB_USER_VERBS_CMD_DEREG_MR) |
  (1ull << IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL) |
  (1ull << IB_USER_VERBS_CMD_CREATE_CQ) |
  (1ull << IB_USER_VERBS_CMD_RESIZE_CQ) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_CQ) |
  (1ull << IB_USER_VERBS_CMD_CREATE_QP) |
  (1ull << IB_USER_VERBS_CMD_MODIFY_QP) |
  (1ull << IB_USER_VERBS_CMD_QUERY_QP) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_QP) |
  (1ull << IB_USER_VERBS_CMD_ATTACH_MCAST) |
  (1ull << IB_USER_VERBS_CMD_DETACH_MCAST) |
  (1ull << IB_USER_VERBS_CMD_CREATE_SRQ) |
  (1ull << IB_USER_VERBS_CMD_MODIFY_SRQ) |
  (1ull << IB_USER_VERBS_CMD_QUERY_SRQ) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_SRQ) |
  (1ull << IB_USER_VERBS_CMD_CREATE_XSRQ) |
  (1ull << IB_USER_VERBS_CMD_OPEN_QP);
 dev->ib_dev.uverbs_ex_cmd_mask =
  (1ull << IB_USER_VERBS_EX_CMD_QUERY_DEVICE) |
  (1ull << IB_USER_VERBS_EX_CMD_CREATE_CQ) |
  (1ull << IB_USER_VERBS_EX_CMD_CREATE_QP) |
  (1ull << IB_USER_VERBS_EX_CMD_MODIFY_QP) |
  (1ull << IB_USER_VERBS_EX_CMD_MODIFY_CQ) |
  (1ull << IB_USER_VERBS_EX_CMD_CREATE_FLOW) |
  (1ull << IB_USER_VERBS_EX_CMD_DESTROY_FLOW);

 if (MLX5_CAP_GEN(mdev, ipoib_enhanced_offloads) &&
     IS_ENABLED(CONFIG_MLX5_CORE_IPOIB))
  ib_set_device_ops(&dev->ib_dev,
      &mlx5_ib_dev_ipoib_enhanced_ops);

 if (mlx5_core_is_pf(mdev))
  ib_set_device_ops(&dev->ib_dev, &mlx5_ib_dev_sriov_ops);

 dev->umr_fence = mlx5_get_umr_fence(MLX5_CAP_GEN(mdev, umr_fence));

 if (MLX5_CAP_GEN(mdev, imaicl)) {
  dev->ib_dev.uverbs_cmd_mask |=
   (1ull << IB_USER_VERBS_CMD_ALLOC_MW) |
   (1ull << IB_USER_VERBS_CMD_DEALLOC_MW);
  ib_set_device_ops(&dev->ib_dev, &mlx5_ib_dev_mw_ops);
 }

 if (MLX5_CAP_GEN(mdev, xrc)) {
  dev->ib_dev.uverbs_cmd_mask |=
   (1ull << IB_USER_VERBS_CMD_OPEN_XRCD) |
   (1ull << IB_USER_VERBS_CMD_CLOSE_XRCD);
  ib_set_device_ops(&dev->ib_dev, &mlx5_ib_dev_xrc_ops);
 }

 if (MLX5_CAP_DEV_MEM(mdev, memic) ||
     MLX5_CAP_GEN_64(dev->mdev, general_obj_types) &
     MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM)
  ib_set_device_ops(&dev->ib_dev, &mlx5_ib_dev_dm_ops);

 if (mlx5_accel_ipsec_device_caps(dev->mdev) &
     MLX5_ACCEL_IPSEC_CAP_DEVICE)
  ib_set_device_ops(&dev->ib_dev, &mlx5_ib_dev_flow_ipsec_ops);
 ib_set_device_ops(&dev->ib_dev, &mlx5_ib_dev_ops);

 if (IS_ENABLED(CONFIG_INFINIBAND_USER_ACCESS))
  dev->ib_dev.driver_def = mlx5_ib_defs;

 err = init_node_data(dev);
 if (err)
  return err;

 if ((MLX5_CAP_GEN(dev->mdev, port_type) == MLX5_CAP_PORT_TYPE_ETH) &&
     (MLX5_CAP_GEN(dev->mdev, disable_local_lb_uc) ||
      MLX5_CAP_GEN(dev->mdev, disable_local_lb_mc)))
  mutex_init(&dev->lb.mutex);

 dev->ib_dev.use_cq_dim = 1;

 return 0;
}
