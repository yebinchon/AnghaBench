
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nvbo; } ;
struct TYPE_4__ {scalar_t__ depth; } ;
struct nouveau_crtc {int index; TYPE_2__ cursor; int base; int restore; int save; int last_dpms; TYPE_1__ lut; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {int client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NV_DPMS_CLEARED ;
 int TTM_PL_FLAG_VRAM ;
 int create_primary_plane (struct drm_device*) ;
 int drm_crtc_helper_add (int *,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,int *,int ,int *,int *,int *) ;
 int drm_mode_crtc_set_gamma_size (int *,int) ;
 struct nouveau_crtc* kzalloc (int,int ) ;
 int nouveau_bo_map (int ) ;
 int nouveau_bo_new (int *,int,int,int ,int ,int,int *,int *,int *) ;
 int nouveau_bo_pin (int ,int ,int) ;
 int nouveau_bo_ref (int *,int *) ;
 int nouveau_bo_unpin (int ) ;
 TYPE_3__* nouveau_drm (struct drm_device*) ;
 int nv04_crtc_funcs ;
 int nv04_crtc_helper_funcs ;
 int nv04_cursor_init (struct nouveau_crtc*) ;
 int nv_crtc_restore ;
 int nv_crtc_save ;

int
nv04_crtc_create(struct drm_device *dev, int crtc_num)
{
 struct nouveau_crtc *nv_crtc;
 int ret;

 nv_crtc = kzalloc(sizeof(*nv_crtc), GFP_KERNEL);
 if (!nv_crtc)
  return -ENOMEM;

 nv_crtc->lut.depth = 0;

 nv_crtc->index = crtc_num;
 nv_crtc->last_dpms = NV_DPMS_CLEARED;

 nv_crtc->save = nv_crtc_save;
 nv_crtc->restore = nv_crtc_restore;

 drm_crtc_init_with_planes(dev, &nv_crtc->base,
                                  create_primary_plane(dev), ((void*)0),
                                  &nv04_crtc_funcs, ((void*)0));
 drm_crtc_helper_add(&nv_crtc->base, &nv04_crtc_helper_funcs);
 drm_mode_crtc_set_gamma_size(&nv_crtc->base, 256);

 ret = nouveau_bo_new(&nouveau_drm(dev)->client, 64*64*4, 0x100,
        TTM_PL_FLAG_VRAM, 0, 0x0000, ((void*)0), ((void*)0),
        &nv_crtc->cursor.nvbo);
 if (!ret) {
  ret = nouveau_bo_pin(nv_crtc->cursor.nvbo, TTM_PL_FLAG_VRAM, 0);
  if (!ret) {
   ret = nouveau_bo_map(nv_crtc->cursor.nvbo);
   if (ret)
    nouveau_bo_unpin(nv_crtc->cursor.nvbo);
  }
  if (ret)
   nouveau_bo_ref(((void*)0), &nv_crtc->cursor.nvbo);
 }

 nv04_cursor_init(nv_crtc);

 return 0;
}
