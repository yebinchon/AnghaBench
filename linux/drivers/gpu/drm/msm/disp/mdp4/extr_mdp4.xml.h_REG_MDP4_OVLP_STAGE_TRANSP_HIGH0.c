
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ __offset_OVLP (scalar_t__) ;
 scalar_t__ __offset_STAGE (scalar_t__) ;

__attribute__((used)) static inline uint32_t REG_MDP4_OVLP_STAGE_TRANSP_HIGH0(uint32_t i0, uint32_t i1) { return 0x00000014 + __offset_OVLP(i0) + __offset_STAGE(i1); }
