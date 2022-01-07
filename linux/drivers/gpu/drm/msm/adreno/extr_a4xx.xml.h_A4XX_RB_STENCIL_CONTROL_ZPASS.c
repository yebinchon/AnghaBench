
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_stencil_op { ____Placeholder_adreno_stencil_op } adreno_stencil_op ;


 int A4XX_RB_STENCIL_CONTROL_ZPASS__MASK ;
 int A4XX_RB_STENCIL_CONTROL_ZPASS__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_RB_STENCIL_CONTROL_ZPASS(enum adreno_stencil_op val)
{
 return ((val) << A4XX_RB_STENCIL_CONTROL_ZPASS__SHIFT) & A4XX_RB_STENCIL_CONTROL_ZPASS__MASK;
}
