
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_msaa_samples { ____Placeholder_a3xx_msaa_samples } a3xx_msaa_samples ;


 int A3XX_GRAS_SC_CONTROL_MSAA_SAMPLES__MASK ;
 int A3XX_GRAS_SC_CONTROL_MSAA_SAMPLES__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_GRAS_SC_CONTROL_MSAA_SAMPLES(enum a3xx_msaa_samples val)
{
 return ((val) << A3XX_GRAS_SC_CONTROL_MSAA_SAMPLES__SHIFT) & A3XX_GRAS_SC_CONTROL_MSAA_SAMPLES__MASK;
}
