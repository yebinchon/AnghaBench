
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp5_igc_type { ____Placeholder_mdp5_igc_type } mdp5_igc_type ;






 int INVALID_IDX (int) ;

__attribute__((used)) static inline uint32_t __offset_IGC(enum mdp5_igc_type idx)
{
 switch (idx) {
  case 128: return 0x00000200;
  case 129: return 0x00000210;
  case 131: return 0x00000220;
  case 130: return 0x00000300;
  default: return INVALID_IDX(idx);
 }
}
