
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A4XX_RB_SAMPLE_COUNT_CONTROL_ADDR__MASK ;
 int A4XX_RB_SAMPLE_COUNT_CONTROL_ADDR__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_RB_SAMPLE_COUNT_CONTROL_ADDR(uint32_t val)
{
 return ((val >> 2) << A4XX_RB_SAMPLE_COUNT_CONTROL_ADDR__SHIFT) & A4XX_RB_SAMPLE_COUNT_CONTROL_ADDR__MASK;
}
