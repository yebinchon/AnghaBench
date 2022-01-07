
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum port_state_policy { ____Placeholder_port_state_policy } port_state_policy ;





 int MLX5_POLICY_DOWN ;
 int MLX5_POLICY_FOLLOW ;
 int MLX5_POLICY_INVALID ;
 int MLX5_POLICY_UP ;

__attribute__((used)) static inline enum port_state_policy net_to_mlx_policy(int policy)
{
 switch (policy) {
 case 129:
  return MLX5_POLICY_DOWN;
 case 128:
  return MLX5_POLICY_UP;
 case 130:
  return MLX5_POLICY_FOLLOW;
 default:
  return MLX5_POLICY_INVALID;
 }
}
