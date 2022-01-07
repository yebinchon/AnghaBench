
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a2xx_rb_copy_sample_select { ____Placeholder_a2xx_rb_copy_sample_select } a2xx_rb_copy_sample_select ;


 int A2XX_RB_COPY_CONTROL_COPY_SAMPLE_SELECT__MASK ;
 int A2XX_RB_COPY_CONTROL_COPY_SAMPLE_SELECT__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_RB_COPY_CONTROL_COPY_SAMPLE_SELECT(enum a2xx_rb_copy_sample_select val)
{
 return ((val) << A2XX_RB_COPY_CONTROL_COPY_SAMPLE_SELECT__SHIFT) & A2XX_RB_COPY_CONTROL_COPY_SAMPLE_SELECT__MASK;
}
