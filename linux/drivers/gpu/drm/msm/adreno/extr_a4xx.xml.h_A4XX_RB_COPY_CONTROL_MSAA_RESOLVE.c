
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_msaa_samples { ____Placeholder_a3xx_msaa_samples } a3xx_msaa_samples ;


 int A4XX_RB_COPY_CONTROL_MSAA_RESOLVE__MASK ;
 int A4XX_RB_COPY_CONTROL_MSAA_RESOLVE__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_RB_COPY_CONTROL_MSAA_RESOLVE(enum a3xx_msaa_samples val)
{
 return ((val) << A4XX_RB_COPY_CONTROL_MSAA_RESOLVE__SHIFT) & A4XX_RB_COPY_CONTROL_MSAA_RESOLVE__MASK;
}
