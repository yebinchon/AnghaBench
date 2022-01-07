
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef enum mdp5_igc_type { ____Placeholder_mdp5_igc_type } mdp5_igc_type ;


 scalar_t__ __offset_IGC (int) ;

__attribute__((used)) static inline uint32_t REG_MDP5_IGC(enum mdp5_igc_type i0) { return 0x00000000 + __offset_IGC(i0); }
