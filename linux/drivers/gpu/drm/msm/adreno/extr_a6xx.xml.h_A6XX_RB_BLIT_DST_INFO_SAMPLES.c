
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_msaa_samples { ____Placeholder_a3xx_msaa_samples } a3xx_msaa_samples ;


 int A6XX_RB_BLIT_DST_INFO_SAMPLES__MASK ;
 int A6XX_RB_BLIT_DST_INFO_SAMPLES__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_RB_BLIT_DST_INFO_SAMPLES(enum a3xx_msaa_samples val)
{
 return ((val) << A6XX_RB_BLIT_DST_INFO_SAMPLES__SHIFT) & A6XX_RB_BLIT_DST_INFO_SAMPLES__MASK;
}
