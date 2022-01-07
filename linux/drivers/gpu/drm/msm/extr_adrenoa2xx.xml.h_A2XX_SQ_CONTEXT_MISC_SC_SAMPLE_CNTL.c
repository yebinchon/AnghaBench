
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a2xx_sq_sample_cntl { ____Placeholder_a2xx_sq_sample_cntl } a2xx_sq_sample_cntl ;


 int A2XX_SQ_CONTEXT_MISC_SC_SAMPLE_CNTL__MASK ;
 int A2XX_SQ_CONTEXT_MISC_SC_SAMPLE_CNTL__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_SQ_CONTEXT_MISC_SC_SAMPLE_CNTL(enum a2xx_sq_sample_cntl val)
{
 return ((val) << A2XX_SQ_CONTEXT_MISC_SC_SAMPLE_CNTL__SHIFT) & A2XX_SQ_CONTEXT_MISC_SC_SAMPLE_CNTL__MASK;
}
