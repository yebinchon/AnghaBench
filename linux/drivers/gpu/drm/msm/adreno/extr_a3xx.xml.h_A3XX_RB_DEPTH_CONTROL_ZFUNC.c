
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_compare_func { ____Placeholder_adreno_compare_func } adreno_compare_func ;


 int A3XX_RB_DEPTH_CONTROL_ZFUNC__MASK ;
 int A3XX_RB_DEPTH_CONTROL_ZFUNC__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_RB_DEPTH_CONTROL_ZFUNC(enum adreno_compare_func val)
{
 return ((val) << A3XX_RB_DEPTH_CONTROL_ZFUNC__SHIFT) & A3XX_RB_DEPTH_CONTROL_ZFUNC__MASK;
}
