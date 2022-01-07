
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a2xx_pa_quantmode { ____Placeholder_a2xx_pa_quantmode } a2xx_pa_quantmode ;


 int A2XX_PA_SU_VTX_CNTL_QUANT_MODE__MASK ;
 int A2XX_PA_SU_VTX_CNTL_QUANT_MODE__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_PA_SU_VTX_CNTL_QUANT_MODE(enum a2xx_pa_quantmode val)
{
 return ((val) << A2XX_PA_SU_VTX_CNTL_QUANT_MODE__SHIFT) & A2XX_PA_SU_VTX_CNTL_QUANT_MODE__MASK;
}
