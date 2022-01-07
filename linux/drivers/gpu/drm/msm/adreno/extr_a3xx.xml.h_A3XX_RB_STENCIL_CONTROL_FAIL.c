
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_stencil_op { ____Placeholder_adreno_stencil_op } adreno_stencil_op ;


 int A3XX_RB_STENCIL_CONTROL_FAIL__MASK ;
 int A3XX_RB_STENCIL_CONTROL_FAIL__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_RB_STENCIL_CONTROL_FAIL(enum adreno_stencil_op val)
{
 return ((val) << A3XX_RB_STENCIL_CONTROL_FAIL__SHIFT) & A3XX_RB_STENCIL_CONTROL_FAIL__MASK;
}
