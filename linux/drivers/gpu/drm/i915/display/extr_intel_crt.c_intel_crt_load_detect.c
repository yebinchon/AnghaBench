
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_crt {TYPE_2__ base; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;
struct drm_device {int dummy; } ;
typedef int i915_reg_t ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int BCLRPAT (int) ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int IS_GEN (struct drm_i915_private*,int) ;
 int PIPECONF (int) ;
 int PIPECONF_FORCE_BORDER ;
 int PIPEDSL (int) ;
 int VBLANK (int) ;
 int VSYNC (int) ;
 int VTOTAL (int) ;
 int _VGA_MSR_WRITE ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int intel_uncore_posting_read (struct intel_uncore*,int ) ;
 int intel_uncore_read (struct intel_uncore*,int ) ;
 int intel_uncore_read8 (struct intel_uncore*,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int) ;
 int intel_wait_for_vblank (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static enum drm_connector_status
intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
{
 struct drm_device *dev = crt->base.base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_uncore *uncore = &dev_priv->uncore;
 u32 save_bclrpat;
 u32 save_vtotal;
 u32 vtotal, vactive;
 u32 vsample;
 u32 vblank, vblank_start, vblank_end;
 u32 dsl;
 i915_reg_t bclrpat_reg, vtotal_reg,
  vblank_reg, vsync_reg, pipeconf_reg, pipe_dsl_reg;
 u8 st00;
 enum drm_connector_status status;

 DRM_DEBUG_KMS("starting load-detect on CRT\n");

 bclrpat_reg = BCLRPAT(pipe);
 vtotal_reg = VTOTAL(pipe);
 vblank_reg = VBLANK(pipe);
 vsync_reg = VSYNC(pipe);
 pipeconf_reg = PIPECONF(pipe);
 pipe_dsl_reg = PIPEDSL(pipe);

 save_bclrpat = intel_uncore_read(uncore, bclrpat_reg);
 save_vtotal = intel_uncore_read(uncore, vtotal_reg);
 vblank = intel_uncore_read(uncore, vblank_reg);

 vtotal = ((save_vtotal >> 16) & 0xfff) + 1;
 vactive = (save_vtotal & 0x7ff) + 1;

 vblank_start = (vblank & 0xfff) + 1;
 vblank_end = ((vblank >> 16) & 0xfff) + 1;


 intel_uncore_write(uncore, bclrpat_reg, 0x500050);

 if (!IS_GEN(dev_priv, 2)) {
  u32 pipeconf = intel_uncore_read(uncore, pipeconf_reg);
  intel_uncore_write(uncore,
       pipeconf_reg,
       pipeconf | PIPECONF_FORCE_BORDER);
  intel_uncore_posting_read(uncore, pipeconf_reg);


  intel_wait_for_vblank(dev_priv, pipe);
  st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
  status = ((st00 & (1 << 4)) != 0) ?
   connector_status_connected :
   connector_status_disconnected;

  intel_uncore_write(uncore, pipeconf_reg, pipeconf);
 } else {
  bool restore_vblank = 0;
  int count, detect;





  if (vblank_start <= vactive && vblank_end >= vtotal) {
   u32 vsync = I915_READ(vsync_reg);
   u32 vsync_start = (vsync & 0xffff) + 1;

   vblank_start = vsync_start;
   intel_uncore_write(uncore,
        vblank_reg,
        (vblank_start - 1) |
        ((vblank_end - 1) << 16));
   restore_vblank = 1;
  }

  if (vblank_start - vactive >= vtotal - vblank_end)
   vsample = (vblank_start + vactive) >> 1;
  else
   vsample = (vtotal + vblank_end) >> 1;




  while (intel_uncore_read(uncore, pipe_dsl_reg) >= vactive)
   ;
  while ((dsl = intel_uncore_read(uncore, pipe_dsl_reg)) <=
         vsample)
   ;



  detect = 0;
  count = 0;
  do {
   count++;

   st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
   if (st00 & (1 << 4))
    detect++;
  } while ((intel_uncore_read(uncore, pipe_dsl_reg) == dsl));


  if (restore_vblank)
   intel_uncore_write(uncore, vblank_reg, vblank);






  status = detect * 4 > count * 3 ?
    connector_status_connected :
    connector_status_disconnected;
 }


 intel_uncore_write(uncore, bclrpat_reg, save_bclrpat);

 return status;
}
