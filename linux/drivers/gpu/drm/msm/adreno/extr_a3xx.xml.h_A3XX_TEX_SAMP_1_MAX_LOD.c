
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A3XX_TEX_SAMP_1_MAX_LOD__MASK ;
 int A3XX_TEX_SAMP_1_MAX_LOD__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_TEX_SAMP_1_MAX_LOD(float val)
{
 return ((((uint32_t)(val * 64.0))) << A3XX_TEX_SAMP_1_MAX_LOD__SHIFT) & A3XX_TEX_SAMP_1_MAX_LOD__MASK;
}
