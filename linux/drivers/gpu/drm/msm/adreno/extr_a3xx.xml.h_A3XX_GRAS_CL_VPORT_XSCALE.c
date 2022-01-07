
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A3XX_GRAS_CL_VPORT_XSCALE__MASK ;
 int A3XX_GRAS_CL_VPORT_XSCALE__SHIFT ;
 int fui (float) ;

__attribute__((used)) static inline uint32_t A3XX_GRAS_CL_VPORT_XSCALE(float val)
{
 return ((fui(val)) << A3XX_GRAS_CL_VPORT_XSCALE__SHIFT) & A3XX_GRAS_CL_VPORT_XSCALE__MASK;
}
