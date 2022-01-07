
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_stencil_op { ____Placeholder_adreno_stencil_op } adreno_stencil_op ;


 int A6XX_RB_STENCIL_CONTROL_ZFAIL_BF__MASK ;
 int A6XX_RB_STENCIL_CONTROL_ZFAIL_BF__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_RB_STENCIL_CONTROL_ZFAIL_BF(enum adreno_stencil_op val)
{
 return ((val) << A6XX_RB_STENCIL_CONTROL_ZFAIL_BF__SHIFT) & A6XX_RB_STENCIL_CONTROL_ZFAIL_BF__MASK;
}
