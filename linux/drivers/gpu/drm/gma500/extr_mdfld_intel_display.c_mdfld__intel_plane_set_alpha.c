
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int DISPPLANE_32BPP ;
 int DISPPLANE_32BPP_NO_ALPHA ;
 int DSPACNTR ;
 int REG_READ (int) ;
 int REG_WRITE (int,int ) ;
 struct drm_device globle_dev ;

void mdfld__intel_plane_set_alpha(int enable)
{
 struct drm_device *dev = &globle_dev;
 int dspcntr_reg = DSPACNTR;
 u32 dspcntr;

 dspcntr = REG_READ(dspcntr_reg);

 if (enable) {
  dspcntr &= ~DISPPLANE_32BPP_NO_ALPHA;
  dspcntr |= DISPPLANE_32BPP;
 } else {
  dspcntr &= ~DISPPLANE_32BPP;
  dspcntr |= DISPPLANE_32BPP_NO_ALPHA;
 }

 REG_WRITE(dspcntr_reg, dspcntr);
}
