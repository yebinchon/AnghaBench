
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct psb_intel_sdvo {scalar_t__ sdvo_reg; TYPE_2__ base; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_MRST (struct drm_device*) ;
 int REG_READ_WITH_AUX (scalar_t__,int) ;
 int REG_WRITE_WITH_AUX (scalar_t__,int ,int) ;
 scalar_t__ SDVOB ;
 scalar_t__ SDVOC ;

__attribute__((used)) static void psb_intel_sdvo_write_sdvox(struct psb_intel_sdvo *psb_intel_sdvo, u32 val)
{
 struct drm_device *dev = psb_intel_sdvo->base.base.dev;
 u32 bval = val, cval = val;
 int i, j;
 int need_aux = IS_MRST(dev) ? 1 : 0;

 for (j = 0; j <= need_aux; j++) {
  if (psb_intel_sdvo->sdvo_reg == SDVOB)
   cval = REG_READ_WITH_AUX(SDVOC, j);
  else
   bval = REG_READ_WITH_AUX(SDVOB, j);






  for (i = 0; i < 2; i++) {
   REG_WRITE_WITH_AUX(SDVOB, bval, j);
   REG_READ_WITH_AUX(SDVOB, j);
   REG_WRITE_WITH_AUX(SDVOC, cval, j);
   REG_READ_WITH_AUX(SDVOC, j);
  }
 }
}
