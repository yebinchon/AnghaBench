
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A2XX_PA_SU_POINT_SIZE_HEIGHT__MASK ;
 int A2XX_PA_SU_POINT_SIZE_HEIGHT__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_PA_SU_POINT_SIZE_HEIGHT(float val)
{
 return ((((uint32_t)(val * 16.0))) << A2XX_PA_SU_POINT_SIZE_HEIGHT__SHIFT) & A2XX_PA_SU_POINT_SIZE_HEIGHT__MASK;
}
