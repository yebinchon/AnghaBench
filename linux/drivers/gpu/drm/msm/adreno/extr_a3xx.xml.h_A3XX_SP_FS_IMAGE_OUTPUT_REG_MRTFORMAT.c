
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_color_fmt { ____Placeholder_a3xx_color_fmt } a3xx_color_fmt ;


 int A3XX_SP_FS_IMAGE_OUTPUT_REG_MRTFORMAT__MASK ;
 int A3XX_SP_FS_IMAGE_OUTPUT_REG_MRTFORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_SP_FS_IMAGE_OUTPUT_REG_MRTFORMAT(enum a3xx_color_fmt val)
{
 return ((val) << A3XX_SP_FS_IMAGE_OUTPUT_REG_MRTFORMAT__SHIFT) & A3XX_SP_FS_IMAGE_OUTPUT_REG_MRTFORMAT__MASK;
}
