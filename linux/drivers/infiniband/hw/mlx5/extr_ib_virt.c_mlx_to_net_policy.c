
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum port_state_policy { ____Placeholder_port_state_policy } port_state_policy ;


 int IFLA_VF_LINK_STATE_AUTO ;
 int IFLA_VF_LINK_STATE_DISABLE ;
 int IFLA_VF_LINK_STATE_ENABLE ;



 int __IFLA_VF_LINK_STATE_MAX ;

__attribute__((used)) static inline u32 mlx_to_net_policy(enum port_state_policy mlx_policy)
{
 switch (mlx_policy) {
 case 130:
  return IFLA_VF_LINK_STATE_DISABLE;
 case 128:
  return IFLA_VF_LINK_STATE_ENABLE;
 case 129:
  return IFLA_VF_LINK_STATE_AUTO;
 default:
  return __IFLA_VF_LINK_STATE_MAX;
 }
}
