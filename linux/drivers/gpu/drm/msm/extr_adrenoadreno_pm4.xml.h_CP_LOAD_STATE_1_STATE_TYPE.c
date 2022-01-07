
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_state_type { ____Placeholder_adreno_state_type } adreno_state_type ;


 int CP_LOAD_STATE_1_STATE_TYPE__MASK ;
 int CP_LOAD_STATE_1_STATE_TYPE__SHIFT ;

__attribute__((used)) static inline uint32_t CP_LOAD_STATE_1_STATE_TYPE(enum adreno_state_type val)
{
 return ((val) << CP_LOAD_STATE_1_STATE_TYPE__SHIFT) & CP_LOAD_STATE_1_STATE_TYPE__MASK;
}
