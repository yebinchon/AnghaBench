
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp5_igc_type { ____Placeholder_mdp5_igc_type } mdp5_igc_type ;


 int __offset_IGC (int) ;

__attribute__((used)) static inline uint32_t REG_MDP5_IGC_LUT(enum mdp5_igc_type i0, uint32_t i1) { return 0x00000000 + __offset_IGC(i0) + 0x4*i1; }
