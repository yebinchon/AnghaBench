
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_vou_hw {struct zx_crtc* aux_crtc; struct zx_crtc* main_crtc; scalar_t__ osd; scalar_t__ otfppu; struct device* dev; } ;
struct zx_plane {int plane; int * bits; scalar_t__ rsz; scalar_t__ hbsc; scalar_t__ csc; scalar_t__ layer; struct device* dev; } ;
struct zx_crtc {int chn_type; int crtc; int * primary; int pixclk; int * bits; int * regs; scalar_t__ dither; scalar_t__ chncsc; scalar_t__ chnreg; struct zx_vou_hw* vou; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;
typedef enum vou_chn_type { ____Placeholder_vou_chn_type } vou_chn_type ;


 scalar_t__ AUX_CHN_CSC_OFFSET ;
 scalar_t__ AUX_DITHER_OFFSET ;
 scalar_t__ AUX_GL_CSC_OFFSET ;
 scalar_t__ AUX_GL_OFFSET ;
 scalar_t__ AUX_HBSC_OFFSET ;
 scalar_t__ AUX_RSZ_OFFSET ;
 int DRM_DEV_ERROR (struct device*,char*,int) ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MAIN_CHN_CSC_OFFSET ;
 scalar_t__ MAIN_DITHER_OFFSET ;
 scalar_t__ MAIN_GL_CSC_OFFSET ;
 scalar_t__ MAIN_GL_OFFSET ;
 scalar_t__ MAIN_HBSC_OFFSET ;
 scalar_t__ MAIN_RSZ_OFFSET ;
 scalar_t__ OSD_AUX_CHN ;
 scalar_t__ OSD_MAIN_CHN ;
 int PTR_ERR (int ) ;
 int VOU_CHN_MAIN ;
 int aux_crtc_bits ;
 int aux_crtc_regs ;
 int devm_clk_get (struct device*,char*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int drm_crtc_helper_add (int *,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,int *,int *,int *,int *,int *) ;
 int main_crtc_bits ;
 int main_crtc_regs ;
 int zx_crtc_funcs ;
 int zx_crtc_helper_funcs ;
 int * zx_gl_bits ;
 int zx_plane_init (struct drm_device*,struct zx_plane*,int ) ;

__attribute__((used)) static int zx_crtc_init(struct drm_device *drm, struct zx_vou_hw *vou,
   enum vou_chn_type chn_type)
{
 struct device *dev = vou->dev;
 struct zx_plane *zplane;
 struct zx_crtc *zcrtc;
 int ret;

 zcrtc = devm_kzalloc(dev, sizeof(*zcrtc), GFP_KERNEL);
 if (!zcrtc)
  return -ENOMEM;

 zcrtc->vou = vou;
 zcrtc->chn_type = chn_type;

 zplane = devm_kzalloc(dev, sizeof(*zplane), GFP_KERNEL);
 if (!zplane)
  return -ENOMEM;

 zplane->dev = dev;

 if (chn_type == VOU_CHN_MAIN) {
  zplane->layer = vou->osd + MAIN_GL_OFFSET;
  zplane->csc = vou->osd + MAIN_GL_CSC_OFFSET;
  zplane->hbsc = vou->osd + MAIN_HBSC_OFFSET;
  zplane->rsz = vou->otfppu + MAIN_RSZ_OFFSET;
  zplane->bits = &zx_gl_bits[0];
  zcrtc->chnreg = vou->osd + OSD_MAIN_CHN;
  zcrtc->chncsc = vou->osd + MAIN_CHN_CSC_OFFSET;
  zcrtc->dither = vou->osd + MAIN_DITHER_OFFSET;
  zcrtc->regs = &main_crtc_regs;
  zcrtc->bits = &main_crtc_bits;
 } else {
  zplane->layer = vou->osd + AUX_GL_OFFSET;
  zplane->csc = vou->osd + AUX_GL_CSC_OFFSET;
  zplane->hbsc = vou->osd + AUX_HBSC_OFFSET;
  zplane->rsz = vou->otfppu + AUX_RSZ_OFFSET;
  zplane->bits = &zx_gl_bits[1];
  zcrtc->chnreg = vou->osd + OSD_AUX_CHN;
  zcrtc->chncsc = vou->osd + AUX_CHN_CSC_OFFSET;
  zcrtc->dither = vou->osd + AUX_DITHER_OFFSET;
  zcrtc->regs = &aux_crtc_regs;
  zcrtc->bits = &aux_crtc_bits;
 }

 zcrtc->pixclk = devm_clk_get(dev, (chn_type == VOU_CHN_MAIN) ?
       "main_wclk" : "aux_wclk");
 if (IS_ERR(zcrtc->pixclk)) {
  ret = PTR_ERR(zcrtc->pixclk);
  DRM_DEV_ERROR(dev, "failed to get pix clk: %d\n", ret);
  return ret;
 }

 ret = zx_plane_init(drm, zplane, DRM_PLANE_TYPE_PRIMARY);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to init primary plane: %d\n", ret);
  return ret;
 }

 zcrtc->primary = &zplane->plane;

 ret = drm_crtc_init_with_planes(drm, &zcrtc->crtc, zcrtc->primary, ((void*)0),
     &zx_crtc_funcs, ((void*)0));
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to init drm crtc: %d\n", ret);
  return ret;
 }

 drm_crtc_helper_add(&zcrtc->crtc, &zx_crtc_helper_funcs);

 if (chn_type == VOU_CHN_MAIN)
  vou->main_crtc = zcrtc;
 else
  vou->aux_crtc = zcrtc;

 return 0;
}
