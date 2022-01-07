
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {unsigned long long uverbs_ex_cmd_mask; } ;
struct mlx5_ib_dev {int mdev; TYPE_1__ ib_dev; } ;


 unsigned long long IB_USER_VERBS_EX_CMD_CREATE_RWQ_IND_TBL ;
 unsigned long long IB_USER_VERBS_EX_CMD_CREATE_WQ ;
 unsigned long long IB_USER_VERBS_EX_CMD_DESTROY_RWQ_IND_TBL ;
 unsigned long long IB_USER_VERBS_EX_CMD_DESTROY_WQ ;
 unsigned long long IB_USER_VERBS_EX_CMD_MODIFY_WQ ;
 int ib_set_device_ops (TYPE_1__*,int *) ;
 int mlx5_add_netdev_notifier (struct mlx5_ib_dev*,scalar_t__) ;
 scalar_t__ mlx5_core_native_port_num (int ) ;
 int mlx5_ib_dev_common_roce_ops ;

__attribute__((used)) static int mlx5_ib_stage_common_roce_init(struct mlx5_ib_dev *dev)
{
 u8 port_num;

 dev->ib_dev.uverbs_ex_cmd_mask |=
   (1ull << IB_USER_VERBS_EX_CMD_CREATE_WQ) |
   (1ull << IB_USER_VERBS_EX_CMD_MODIFY_WQ) |
   (1ull << IB_USER_VERBS_EX_CMD_DESTROY_WQ) |
   (1ull << IB_USER_VERBS_EX_CMD_CREATE_RWQ_IND_TBL) |
   (1ull << IB_USER_VERBS_EX_CMD_DESTROY_RWQ_IND_TBL);
 ib_set_device_ops(&dev->ib_dev, &mlx5_ib_dev_common_roce_ops);

 port_num = mlx5_core_native_port_num(dev->mdev) - 1;


 return mlx5_add_netdev_notifier(dev, port_num);
}
