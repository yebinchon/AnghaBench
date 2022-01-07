
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_msaa_samples { ____Placeholder_a3xx_msaa_samples } a3xx_msaa_samples ;


 int A5XX_TEX_CONST_0_SAMPLES__MASK ;
 int A5XX_TEX_CONST_0_SAMPLES__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_TEX_CONST_0_SAMPLES(enum a3xx_msaa_samples val)
{
 return ((val) << A5XX_TEX_CONST_0_SAMPLES__SHIFT) & A5XX_TEX_CONST_0_SAMPLES__MASK;
}
