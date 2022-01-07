
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctx; } ;
struct mlx5_ib_flow_action {TYPE_1__ esp_aes_gcm; } ;
struct ib_flow_action {int type; } ;




 int WARN_ON (int) ;
 int kfree (struct mlx5_ib_flow_action*) ;
 int mlx5_accel_esp_destroy_xfrm (int ) ;
 int mlx5_ib_destroy_flow_action_raw (struct mlx5_ib_flow_action*) ;
 struct mlx5_ib_flow_action* to_mflow_act (struct ib_flow_action*) ;

__attribute__((used)) static int mlx5_ib_destroy_flow_action(struct ib_flow_action *action)
{
 struct mlx5_ib_flow_action *maction = to_mflow_act(action);

 switch (action->type) {
 case 129:




  mlx5_accel_esp_destroy_xfrm(maction->esp_aes_gcm.ctx);
  break;
 case 128:
  mlx5_ib_destroy_flow_action_raw(maction);
  break;
 default:
  WARN_ON(1);
  break;
 }

 kfree(maction);
 return 0;
}
