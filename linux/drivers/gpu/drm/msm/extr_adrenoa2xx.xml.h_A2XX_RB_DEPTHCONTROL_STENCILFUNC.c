
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_compare_func { ____Placeholder_adreno_compare_func } adreno_compare_func ;


 int A2XX_RB_DEPTHCONTROL_STENCILFUNC__MASK ;
 int A2XX_RB_DEPTHCONTROL_STENCILFUNC__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_RB_DEPTHCONTROL_STENCILFUNC(enum adreno_compare_func val)
{
 return ((val) << A2XX_RB_DEPTHCONTROL_STENCILFUNC__SHIFT) & A2XX_RB_DEPTHCONTROL_STENCILFUNC__MASK;
}
