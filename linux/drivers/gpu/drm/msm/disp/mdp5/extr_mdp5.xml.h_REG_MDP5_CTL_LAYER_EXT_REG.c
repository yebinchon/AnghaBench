
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ __offset_CTL (scalar_t__) ;
 scalar_t__ __offset_LAYER_EXT (scalar_t__) ;

__attribute__((used)) static inline uint32_t REG_MDP5_CTL_LAYER_EXT_REG(uint32_t i0, uint32_t i1) { return 0x00000000 + __offset_CTL(i0) + __offset_LAYER_EXT(i1); }
