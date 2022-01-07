
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int A4XX_GRAS_SU_POINT_SIZE__MASK ;
 int A4XX_GRAS_SU_POINT_SIZE__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_GRAS_SU_POINT_SIZE(float val)
{
 return ((((int32_t)(val * 16.0))) << A4XX_GRAS_SU_POINT_SIZE__SHIFT) & A4XX_GRAS_SU_POINT_SIZE__MASK;
}
