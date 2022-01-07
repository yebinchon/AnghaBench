
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a4xx_tess_spacing { ____Placeholder_a4xx_tess_spacing } a4xx_tess_spacing ;


 int A4XX_PC_HS_PARAM_SPACING__MASK ;
 int A4XX_PC_HS_PARAM_SPACING__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_PC_HS_PARAM_SPACING(enum a4xx_tess_spacing val)
{
 return ((val) << A4XX_PC_HS_PARAM_SPACING__SHIFT) & A4XX_PC_HS_PARAM_SPACING__MASK;
}
