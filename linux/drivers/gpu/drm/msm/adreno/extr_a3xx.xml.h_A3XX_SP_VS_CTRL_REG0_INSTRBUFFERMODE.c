
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_instrbuffermode { ____Placeholder_a3xx_instrbuffermode } a3xx_instrbuffermode ;


 int A3XX_SP_VS_CTRL_REG0_INSTRBUFFERMODE__MASK ;
 int A3XX_SP_VS_CTRL_REG0_INSTRBUFFERMODE__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_SP_VS_CTRL_REG0_INSTRBUFFERMODE(enum a3xx_instrbuffermode val)
{
 return ((val) << A3XX_SP_VS_CTRL_REG0_INSTRBUFFERMODE__SHIFT) & A3XX_SP_VS_CTRL_REG0_INSTRBUFFERMODE__MASK;
}
