
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp_component_type { ____Placeholder_mdp_component_type } mdp_component_type ;





 int INVALID_IDX (int) ;

__attribute__((used)) static inline uint32_t __offset_SW_PIX_EXT(enum mdp_component_type idx)
{
 switch (idx) {
  case 130: return 0x00000100;
  case 129: return 0x00000110;
  case 128: return 0x00000120;
  default: return INVALID_IDX(idx);
 }
}
