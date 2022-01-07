
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp5_intfnum { ____Placeholder_mdp5_intfnum } mdp5_intfnum ;


 int MDP5_CTL_OP_INTF_NUM__MASK ;
 int MDP5_CTL_OP_INTF_NUM__SHIFT ;

__attribute__((used)) static inline uint32_t MDP5_CTL_OP_INTF_NUM(enum mdp5_intfnum val)
{
 return ((val) << MDP5_CTL_OP_INTF_NUM__SHIFT) & MDP5_CTL_OP_INTF_NUM__MASK;
}
