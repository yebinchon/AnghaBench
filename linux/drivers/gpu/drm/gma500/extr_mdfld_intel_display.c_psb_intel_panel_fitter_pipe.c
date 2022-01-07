
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int PFIT_CONTROL ;
 int PFIT_ENABLE ;
 int REG_READ (int ) ;

__attribute__((used)) static int psb_intel_panel_fitter_pipe(struct drm_device *dev)
{
 u32 pfit_control;

 pfit_control = REG_READ(PFIT_CONTROL);


 if ((pfit_control & PFIT_ENABLE) == 0)
  return -1;


 return (pfit_control >> 29) & 0x3;
}
