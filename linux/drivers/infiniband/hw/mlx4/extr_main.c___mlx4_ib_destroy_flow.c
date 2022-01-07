
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_QP_FLOW_STEERING_DETACH ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int __mlx4_ib_destroy_flow(struct mlx4_dev *dev, u64 reg_id)
{
 int err;
 err = mlx4_cmd(dev, reg_id, 0, 0,
         MLX4_QP_FLOW_STEERING_DETACH, MLX4_CMD_TIME_CLASS_A,
         MLX4_CMD_NATIVE);
 if (err)
  pr_err("Fail to detach network rule. registration id = 0x%llx\n",
         reg_id);
 return err;
}
