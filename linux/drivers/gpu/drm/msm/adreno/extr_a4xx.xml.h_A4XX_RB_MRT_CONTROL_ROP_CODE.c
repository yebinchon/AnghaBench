
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_rop_code { ____Placeholder_a3xx_rop_code } a3xx_rop_code ;


 int A4XX_RB_MRT_CONTROL_ROP_CODE__MASK ;
 int A4XX_RB_MRT_CONTROL_ROP_CODE__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_RB_MRT_CONTROL_ROP_CODE(enum a3xx_rop_code val)
{
 return ((val) << A4XX_RB_MRT_CONTROL_ROP_CODE__SHIFT) & A4XX_RB_MRT_CONTROL_ROP_CODE__MASK;
}
