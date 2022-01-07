
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_compare_func { ____Placeholder_adreno_compare_func } adreno_compare_func ;


 int A4XX_RB_ALPHA_CONTROL_ALPHA_TEST_FUNC__MASK ;
 int A4XX_RB_ALPHA_CONTROL_ALPHA_TEST_FUNC__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_RB_ALPHA_CONTROL_ALPHA_TEST_FUNC(enum adreno_compare_func val)
{
 return ((val) << A4XX_RB_ALPHA_CONTROL_ALPHA_TEST_FUNC__SHIFT) & A4XX_RB_ALPHA_CONTROL_ALPHA_TEST_FUNC__MASK;
}
