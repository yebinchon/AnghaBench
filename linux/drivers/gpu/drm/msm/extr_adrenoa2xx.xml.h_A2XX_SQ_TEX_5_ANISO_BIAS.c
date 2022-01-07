
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int A2XX_SQ_TEX_5_ANISO_BIAS__MASK ;
 int A2XX_SQ_TEX_5_ANISO_BIAS__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_SQ_TEX_5_ANISO_BIAS(float val)
{
 return ((((int32_t)(val * 1.0))) << A2XX_SQ_TEX_5_ANISO_BIAS__SHIFT) & A2XX_SQ_TEX_5_ANISO_BIAS__MASK;
}
