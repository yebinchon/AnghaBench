
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {scalar_t__ family; scalar_t__ is_atom_bios; TYPE_1__ mode_info; } ;
struct TYPE_6__ {scalar_t__ num_connectors; struct drm_connector** connectors; int * crtc; } ;
struct radeon_crtc {int crtc_id; int* lut_r; int* lut_g; int* lut_b; TYPE_3__ mode_set; int base; int max_cursor_height; int max_cursor_width; int flip_queue; } ;
struct TYPE_5__ {int cursor_height; int cursor_width; } ;
struct drm_device {TYPE_2__ mode_config; struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ CHIP_BONAIRE ;
 int CIK_CURSOR_HEIGHT ;
 int CIK_CURSOR_WIDTH ;
 int CURSOR_HEIGHT ;
 int CURSOR_WIDTH ;
 int GFP_KERNEL ;
 int RADEONFB_CONN_LIMIT ;
 int WQ_HIGHPRI ;
 int alloc_workqueue (char*,int ,int ) ;
 int drm_crtc_init (struct drm_device*,int *,int *) ;
 int drm_mode_crtc_set_gamma_size (int *,int) ;
 struct radeon_crtc* kzalloc (int,int ) ;
 int radeon_atombios_init_crtc (struct drm_device*,struct radeon_crtc*) ;
 int radeon_crtc_funcs ;
 int radeon_legacy_init_crtc (struct drm_device*,struct radeon_crtc*) ;
 scalar_t__ radeon_r4xx_atom ;

__attribute__((used)) static void radeon_crtc_init(struct drm_device *dev, int index)
{
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_crtc *radeon_crtc;
 int i;

 radeon_crtc = kzalloc(sizeof(struct radeon_crtc) + (RADEONFB_CONN_LIMIT * sizeof(struct drm_connector *)), GFP_KERNEL);
 if (radeon_crtc == ((void*)0))
  return;

 drm_crtc_init(dev, &radeon_crtc->base, &radeon_crtc_funcs);

 drm_mode_crtc_set_gamma_size(&radeon_crtc->base, 256);
 radeon_crtc->crtc_id = index;
 radeon_crtc->flip_queue = alloc_workqueue("radeon-crtc", WQ_HIGHPRI, 0);
 rdev->mode_info.crtcs[index] = radeon_crtc;

 if (rdev->family >= CHIP_BONAIRE) {
  radeon_crtc->max_cursor_width = CIK_CURSOR_WIDTH;
  radeon_crtc->max_cursor_height = CIK_CURSOR_HEIGHT;
 } else {
  radeon_crtc->max_cursor_width = CURSOR_WIDTH;
  radeon_crtc->max_cursor_height = CURSOR_HEIGHT;
 }
 dev->mode_config.cursor_width = radeon_crtc->max_cursor_width;
 dev->mode_config.cursor_height = radeon_crtc->max_cursor_height;







 for (i = 0; i < 256; i++) {
  radeon_crtc->lut_r[i] = i << 2;
  radeon_crtc->lut_g[i] = i << 2;
  radeon_crtc->lut_b[i] = i << 2;
 }

 if (rdev->is_atom_bios && (ASIC_IS_AVIVO(rdev) || radeon_r4xx_atom))
  radeon_atombios_init_crtc(dev, radeon_crtc);
 else
  radeon_legacy_init_crtc(dev, radeon_crtc);
}
