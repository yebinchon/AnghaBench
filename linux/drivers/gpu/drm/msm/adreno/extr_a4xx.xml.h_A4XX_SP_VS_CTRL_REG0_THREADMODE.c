
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_threadmode { ____Placeholder_a3xx_threadmode } a3xx_threadmode ;


 int A4XX_SP_VS_CTRL_REG0_THREADMODE__MASK ;
 int A4XX_SP_VS_CTRL_REG0_THREADMODE__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_SP_VS_CTRL_REG0_THREADMODE(enum a3xx_threadmode val)
{
 return ((val) << A4XX_SP_VS_CTRL_REG0_THREADMODE__SHIFT) & A4XX_SP_VS_CTRL_REG0_THREADMODE__MASK;
}
