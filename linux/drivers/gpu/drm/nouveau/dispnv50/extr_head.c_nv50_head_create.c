
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct nv50_wndw {int plane; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_10__ {int index; struct drm_crtc base; } ;
struct nv50_head {int olut; TYPE_6__* func; TYPE_3__ base; } ;
struct nv50_disp {TYPE_5__* disp; TYPE_2__* core; } ;
struct TYPE_14__ {int mmu; } ;
struct nouveau_drm {TYPE_7__ client; } ;
struct drm_device {int dummy; } ;
struct TYPE_13__ {scalar_t__ olut_set; } ;
struct TYPE_11__ {scalar_t__ oclass; } ;
struct TYPE_12__ {TYPE_4__ object; } ;
struct TYPE_9__ {TYPE_1__* func; } ;
struct TYPE_8__ {TYPE_6__* head; } ;


 int DRM_PLANE_TYPE_OVERLAY ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int ENOMEM ;
 scalar_t__ GF110_DISP ;
 int GFP_KERNEL ;
 scalar_t__ GV100_DISP ;
 int drm_crtc_enable_color_mgmt (struct drm_crtc*,int,int,int) ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,int *,int *,int *,char*,int) ;
 int drm_mode_crtc_set_gamma_size (struct drm_crtc*,int) ;
 int kfree (struct nv50_head*) ;
 struct nv50_head* kzalloc (int,int ) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nv50_base_new (struct nouveau_drm*,int,struct nv50_wndw**) ;
 int nv50_curs_new (struct nouveau_drm*,int,struct nv50_wndw**) ;
 struct nv50_disp* nv50_disp (struct drm_device*) ;
 int nv50_head_destroy (struct drm_crtc*) ;
 int nv50_head_func ;
 int nv50_head_help ;
 int nv50_lut_init (struct nv50_disp*,int *,int *) ;
 int nv50_ovly_new (struct nouveau_drm*,int,struct nv50_wndw**) ;
 int nv50_wndw_new (struct nouveau_drm*,int ,int,struct nv50_wndw**) ;

int
nv50_head_create(struct drm_device *dev, int index)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nv50_disp *disp = nv50_disp(dev);
 struct nv50_head *head;
 struct nv50_wndw *base, *ovly, *curs;
 struct drm_crtc *crtc;
 int ret;

 head = kzalloc(sizeof(*head), GFP_KERNEL);
 if (!head)
  return -ENOMEM;

 head->func = disp->core->func->head;
 head->base.index = index;

 if (disp->disp->object.oclass < GV100_DISP) {
  ret = nv50_base_new(drm, head->base.index, &base);
  ret = nv50_ovly_new(drm, head->base.index, &ovly);
 } else {
  ret = nv50_wndw_new(drm, DRM_PLANE_TYPE_PRIMARY,
        head->base.index * 2 + 0, &base);
  ret = nv50_wndw_new(drm, DRM_PLANE_TYPE_OVERLAY,
        head->base.index * 2 + 1, &ovly);
 }
 if (ret == 0)
  ret = nv50_curs_new(drm, head->base.index, &curs);
 if (ret) {
  kfree(head);
  return ret;
 }

 crtc = &head->base.base;
 drm_crtc_init_with_planes(dev, crtc, &base->plane, &curs->plane,
      &nv50_head_func, "head-%d", head->base.index);
 drm_crtc_helper_add(crtc, &nv50_head_help);
 drm_mode_crtc_set_gamma_size(crtc, 256);
 if (disp->disp->object.oclass >= GF110_DISP)
  drm_crtc_enable_color_mgmt(crtc, 256, 1, 256);
 else
  drm_crtc_enable_color_mgmt(crtc, 0, 0, 256);

 if (head->func->olut_set) {
  ret = nv50_lut_init(disp, &drm->client.mmu, &head->olut);
  if (ret)
   goto out;
 }

out:
 if (ret)
  nv50_head_destroy(crtc);
 return ret;
}
