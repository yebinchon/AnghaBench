
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A5XX_GRAS_SU_POINT_MINMAX_MAX__MASK ;
 int A5XX_GRAS_SU_POINT_MINMAX_MAX__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_GRAS_SU_POINT_MINMAX_MAX(float val)
{
 return ((((uint32_t)(val * 16.0))) << A5XX_GRAS_SU_POINT_MINMAX_MAX__SHIFT) & A5XX_GRAS_SU_POINT_MINMAX_MAX__MASK;
}
