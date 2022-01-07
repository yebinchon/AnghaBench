
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A6XX_TEX_SAMP_1_MIN_LOD__MASK ;
 int A6XX_TEX_SAMP_1_MIN_LOD__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_TEX_SAMP_1_MIN_LOD(float val)
{
 return ((((uint32_t)(val * 256.0))) << A6XX_TEX_SAMP_1_MIN_LOD__SHIFT) & A6XX_TEX_SAMP_1_MIN_LOD__MASK;
}
