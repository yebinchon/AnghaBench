
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_intp_mode { ____Placeholder_a3xx_intp_mode } a3xx_intp_mode ;


 int A3XX_VPC_VARYING_INTERP_MODE_CF__MASK ;
 int A3XX_VPC_VARYING_INTERP_MODE_CF__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_VPC_VARYING_INTERP_MODE_CF(enum a3xx_intp_mode val)
{
 return ((val) << A3XX_VPC_VARYING_INTERP_MODE_CF__SHIFT) & A3XX_VPC_VARYING_INTERP_MODE_CF__MASK;
}
