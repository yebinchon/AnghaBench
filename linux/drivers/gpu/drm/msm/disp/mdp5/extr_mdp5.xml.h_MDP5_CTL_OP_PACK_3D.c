
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp5_pack_3d { ____Placeholder_mdp5_pack_3d } mdp5_pack_3d ;


 int MDP5_CTL_OP_PACK_3D__MASK ;
 int MDP5_CTL_OP_PACK_3D__SHIFT ;

__attribute__((used)) static inline uint32_t MDP5_CTL_OP_PACK_3D(enum mdp5_pack_3d val)
{
 return ((val) << MDP5_CTL_OP_PACK_3D__SHIFT) & MDP5_CTL_OP_PACK_3D__MASK;
}
