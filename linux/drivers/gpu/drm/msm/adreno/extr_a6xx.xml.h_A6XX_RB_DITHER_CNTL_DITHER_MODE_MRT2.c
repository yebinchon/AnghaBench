
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_rb_dither_mode { ____Placeholder_adreno_rb_dither_mode } adreno_rb_dither_mode ;


 int A6XX_RB_DITHER_CNTL_DITHER_MODE_MRT2__MASK ;
 int A6XX_RB_DITHER_CNTL_DITHER_MODE_MRT2__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_RB_DITHER_CNTL_DITHER_MODE_MRT2(enum adreno_rb_dither_mode val)
{
 return ((val) << A6XX_RB_DITHER_CNTL_DITHER_MODE_MRT2__SHIFT) & A6XX_RB_DITHER_CNTL_DITHER_MODE_MRT2__MASK;
}
