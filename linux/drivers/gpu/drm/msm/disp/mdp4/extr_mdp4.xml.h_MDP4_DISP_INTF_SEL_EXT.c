
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp4_intf { ____Placeholder_mdp4_intf } mdp4_intf ;


 int MDP4_DISP_INTF_SEL_EXT__MASK ;
 int MDP4_DISP_INTF_SEL_EXT__SHIFT ;

__attribute__((used)) static inline uint32_t MDP4_DISP_INTF_SEL_EXT(enum mdp4_intf val)
{
 return ((val) << MDP4_DISP_INTF_SEL_EXT__SHIFT) & MDP4_DISP_INTF_SEL_EXT__MASK;
}
