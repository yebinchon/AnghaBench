
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;


 int DSPSTRIDE (int) ;
 int INTEL_GEN (struct drm_i915_private*) ;




 int gvt_dbg_core (char*,int) ;
 int vgpu_vreg_t (struct intel_vgpu*,int ) ;

__attribute__((used)) static u32 intel_vgpu_get_stride(struct intel_vgpu *vgpu, int pipe,
 u32 tiled, int stride_mask, int bpp)
{
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

 u32 stride_reg = vgpu_vreg_t(vgpu, DSPSTRIDE(pipe)) & stride_mask;
 u32 stride = stride_reg;

 if (INTEL_GEN(dev_priv) >= 9) {
  switch (tiled) {
  case 131:
   stride = stride_reg * 64;
   break;
  case 130:
   stride = stride_reg * 512;
   break;
  case 129:
   stride = stride_reg * 128;
   break;
  case 128:
   if (bpp == 8)
    stride = stride_reg * 64;
   else if (bpp == 16 || bpp == 32 || bpp == 64)
    stride = stride_reg * 128;
   else
    gvt_dbg_core("skl: unsupported bpp:%d\n", bpp);
   break;
  default:
   gvt_dbg_core("skl: unsupported tile format:%x\n",
    tiled);
  }
 }

 return stride;
}
