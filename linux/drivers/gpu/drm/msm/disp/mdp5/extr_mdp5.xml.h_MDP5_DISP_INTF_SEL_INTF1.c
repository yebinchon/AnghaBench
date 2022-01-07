
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp5_intf_type { ____Placeholder_mdp5_intf_type } mdp5_intf_type ;


 int MDP5_DISP_INTF_SEL_INTF1__MASK ;
 int MDP5_DISP_INTF_SEL_INTF1__SHIFT ;

__attribute__((used)) static inline uint32_t MDP5_DISP_INTF_SEL_INTF1(enum mdp5_intf_type val)
{
 return ((val) << MDP5_DISP_INTF_SEL_INTF1__SHIFT) & MDP5_DISP_INTF_SEL_INTF1__MASK;
}
