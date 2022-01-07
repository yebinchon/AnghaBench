
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A3XX_GRAS_CL_VPORT_ZSCALE__MASK ;
 int A3XX_GRAS_CL_VPORT_ZSCALE__SHIFT ;
 int fui (float) ;

__attribute__((used)) static inline uint32_t A3XX_GRAS_CL_VPORT_ZSCALE(float val)
{
 return ((fui(val)) << A3XX_GRAS_CL_VPORT_ZSCALE__SHIFT) & A3XX_GRAS_CL_VPORT_ZSCALE__MASK;
}
