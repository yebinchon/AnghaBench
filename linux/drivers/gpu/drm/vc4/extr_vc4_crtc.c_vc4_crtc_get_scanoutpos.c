
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vc4_dev {int dummy; } ;
struct vc4_crtc {int cob_size; int t_vblank; int channel; } ;
struct drm_display_mode {int flags; int crtc_htotal; int crtc_hdisplay; int vtotal; int vdisplay; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef int ktime_t ;


 int DRM_MODE_FLAG_INTERLACE ;
 int HVS_READ (int ) ;
 int SCALER_DISPSTATX (int ) ;
 int SCALER_DISPSTATX_FRAME_COUNT ;
 int SCALER_DISPSTATX_LINE ;
 int VC4_GET_FIELD (int ,int ) ;
 struct drm_crtc* drm_crtc_from_index (struct drm_device*,unsigned int) ;
 int ktime_get () ;
 struct vc4_crtc* to_vc4_crtc (struct drm_crtc*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

bool vc4_crtc_get_scanoutpos(struct drm_device *dev, unsigned int crtc_id,
        bool in_vblank_irq, int *vpos, int *hpos,
        ktime_t *stime, ktime_t *etime,
        const struct drm_display_mode *mode)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct drm_crtc *crtc = drm_crtc_from_index(dev, crtc_id);
 struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 u32 val;
 int fifo_lines;
 int vblank_lines;
 bool ret = 0;




 if (stime)
  *stime = ktime_get();





 val = HVS_READ(SCALER_DISPSTATX(vc4_crtc->channel));


 if (etime)
  *etime = ktime_get();




 *vpos = VC4_GET_FIELD(val, SCALER_DISPSTATX_LINE);
 *hpos = 0;

 if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
  *vpos /= 2;


  if (VC4_GET_FIELD(val, SCALER_DISPSTATX_FRAME_COUNT) % 2)
   *hpos += mode->crtc_htotal / 2;
 }


 fifo_lines = vc4_crtc->cob_size / mode->crtc_hdisplay;

 if (fifo_lines > 0)
  ret = 1;


 if (*vpos > fifo_lines) {
  *vpos -= fifo_lines + 1;

  return ret;
 }
 vblank_lines = mode->vtotal - mode->vdisplay;

 if (in_vblank_irq) {
  *vpos = -vblank_lines;

  if (stime)
   *stime = vc4_crtc->t_vblank;
  if (etime)
   *etime = vc4_crtc->t_vblank;
 } else {






  *vpos = 0;
 }

 return ret;
}
