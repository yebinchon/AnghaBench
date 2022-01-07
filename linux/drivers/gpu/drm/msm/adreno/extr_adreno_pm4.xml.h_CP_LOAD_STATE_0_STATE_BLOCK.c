
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_state_block { ____Placeholder_adreno_state_block } adreno_state_block ;


 int CP_LOAD_STATE_0_STATE_BLOCK__MASK ;
 int CP_LOAD_STATE_0_STATE_BLOCK__SHIFT ;

__attribute__((used)) static inline uint32_t CP_LOAD_STATE_0_STATE_BLOCK(enum adreno_state_block val)
{
 return ((val) << CP_LOAD_STATE_0_STATE_BLOCK__SHIFT) & CP_LOAD_STATE_0_STATE_BLOCK__MASK;
}
