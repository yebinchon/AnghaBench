
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a2xx_rb_edram_mode { ____Placeholder_a2xx_rb_edram_mode } a2xx_rb_edram_mode ;


 int A2XX_RB_MODECONTROL_EDRAM_MODE__MASK ;
 int A2XX_RB_MODECONTROL_EDRAM_MODE__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_RB_MODECONTROL_EDRAM_MODE(enum a2xx_rb_edram_mode val)
{
 return ((val) << A2XX_RB_MODECONTROL_EDRAM_MODE__SHIFT) & A2XX_RB_MODECONTROL_EDRAM_MODE__MASK;
}
