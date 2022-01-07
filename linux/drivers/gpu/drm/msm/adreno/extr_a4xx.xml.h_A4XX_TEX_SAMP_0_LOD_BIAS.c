
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int A4XX_TEX_SAMP_0_LOD_BIAS__MASK ;
 int A4XX_TEX_SAMP_0_LOD_BIAS__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_TEX_SAMP_0_LOD_BIAS(float val)
{
 return ((((int32_t)(val * 256.0))) << A4XX_TEX_SAMP_0_LOD_BIAS__SHIFT) & A4XX_TEX_SAMP_0_LOD_BIAS__MASK;
}
