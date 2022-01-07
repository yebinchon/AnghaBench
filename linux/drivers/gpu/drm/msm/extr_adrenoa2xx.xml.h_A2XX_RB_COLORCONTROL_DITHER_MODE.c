
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_rb_dither_mode { ____Placeholder_adreno_rb_dither_mode } adreno_rb_dither_mode ;


 int A2XX_RB_COLORCONTROL_DITHER_MODE__MASK ;
 int A2XX_RB_COLORCONTROL_DITHER_MODE__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_RB_COLORCONTROL_DITHER_MODE(enum adreno_rb_dither_mode val)
{
 return ((val) << A2XX_RB_COLORCONTROL_DITHER_MODE__SHIFT) & A2XX_RB_COLORCONTROL_DITHER_MODE__MASK;
}
