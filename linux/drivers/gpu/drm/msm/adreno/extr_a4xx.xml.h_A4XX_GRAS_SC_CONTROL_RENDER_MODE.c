
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_render_mode { ____Placeholder_a3xx_render_mode } a3xx_render_mode ;


 int A4XX_GRAS_SC_CONTROL_RENDER_MODE__MASK ;
 int A4XX_GRAS_SC_CONTROL_RENDER_MODE__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_GRAS_SC_CONTROL_RENDER_MODE(enum a3xx_render_mode val)
{
 return ((val) << A4XX_GRAS_SC_CONTROL_RENDER_MODE__SHIFT) & A4XX_GRAS_SC_CONTROL_RENDER_MODE__MASK;
}
