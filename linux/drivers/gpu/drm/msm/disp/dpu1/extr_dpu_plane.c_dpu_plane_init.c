
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u32 ;
struct msm_drm_private {int kms; } ;
struct TYPE_15__ {int id; } ;
struct drm_plane {TYPE_5__ base; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct dpu_plane {int pipe; int is_virtual; TYPE_6__* pipe_hw; int pipe_name; int lock; TYPE_7__* catalog; TYPE_2__* pipe_sblk; int features; int mplane_list; struct drm_plane base; } ;
struct dpu_kms {TYPE_7__* catalog; int mmio; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;
struct TYPE_17__ {TYPE_4__* mixer; scalar_t__ mixer_count; } ;
struct TYPE_16__ {TYPE_1__* cap; } ;
struct TYPE_14__ {TYPE_3__* sblk; } ;
struct TYPE_13__ {int maxblendstages; } ;
struct TYPE_12__ {int* virt_format_list; int virt_num_formats; int* format_list; int num_formats; } ;
struct TYPE_11__ {TYPE_2__* sblk; int features; } ;


 int DPU_DEBUG (char*,int ,int,int,scalar_t__) ;
 int DPU_ERROR (char*,int) ;
 int DPU_NAME_SIZE ;
 int DPU_STAGE_0 ;
 int DPU_STAGE_MAX ;
 int DPU_ZPOS_MAX ;
 int DRM_MODE_REFLECT_X ;
 int DRM_MODE_REFLECT_Y ;
 int DRM_MODE_ROTATE_0 ;
 int DRM_MODE_ROTATE_180 ;
 int EINVAL ;
 int ENOMEM ;
 struct drm_plane* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (TYPE_6__*) ;
 int PTR_ERR (TYPE_6__*) ;
 int dpu_hw_sspp_destroy (TYPE_6__*) ;
 TYPE_6__* dpu_hw_sspp_init (int,int ,TYPE_7__*,int) ;
 int dpu_plane_funcs ;
 int dpu_plane_helper_funcs ;
 int drm_plane_create_rotation_property (struct drm_plane*,int,int) ;
 int drm_plane_create_zpos_property (struct drm_plane*,int ,int ,int) ;
 int drm_plane_enable_fb_damage_clips (struct drm_plane*) ;
 struct drm_plane* drm_plane_find (struct drm_device*,int *,scalar_t__) ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int,int *,int const*,int,int ,int,int *) ;
 int kfree (struct dpu_plane*) ;
 struct dpu_plane* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int snprintf (int ,int ,char*,int) ;
 int supported_format_modifiers ;
 struct dpu_kms* to_dpu_kms (int ) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;

struct drm_plane *dpu_plane_init(struct drm_device *dev,
  uint32_t pipe, enum drm_plane_type type,
  unsigned long possible_crtcs, u32 master_plane_id)
{
 struct drm_plane *plane = ((void*)0), *master_plane = ((void*)0);
 const uint32_t *format_list;
 struct dpu_plane *pdpu;
 struct msm_drm_private *priv = dev->dev_private;
 struct dpu_kms *kms = to_dpu_kms(priv->kms);
 int zpos_max = DPU_ZPOS_MAX;
 uint32_t num_formats;
 int ret = -EINVAL;


 pdpu = kzalloc(sizeof(*pdpu), GFP_KERNEL);
 if (!pdpu) {
  DPU_ERROR("[%u]failed to allocate local plane struct\n", pipe);
  ret = -ENOMEM;
  return ERR_PTR(ret);
 }


 plane = &pdpu->base;
 pdpu->pipe = pipe;
 pdpu->is_virtual = (master_plane_id != 0);
 INIT_LIST_HEAD(&pdpu->mplane_list);
 master_plane = drm_plane_find(dev, ((void*)0), master_plane_id);
 if (master_plane) {
  struct dpu_plane *mpdpu = to_dpu_plane(master_plane);

  list_add_tail(&pdpu->mplane_list, &mpdpu->mplane_list);
 }


 pdpu->pipe_hw = dpu_hw_sspp_init(pipe, kms->mmio, kms->catalog,
       master_plane_id != 0);
 if (IS_ERR(pdpu->pipe_hw)) {
  DPU_ERROR("[%u]SSPP init failed\n", pipe);
  ret = PTR_ERR(pdpu->pipe_hw);
  goto clean_plane;
 } else if (!pdpu->pipe_hw->cap || !pdpu->pipe_hw->cap->sblk) {
  DPU_ERROR("[%u]SSPP init returned invalid cfg\n", pipe);
  goto clean_sspp;
 }


 pdpu->features = pdpu->pipe_hw->cap->features;
 pdpu->pipe_sblk = pdpu->pipe_hw->cap->sblk;
 if (!pdpu->pipe_sblk) {
  DPU_ERROR("[%u]invalid sblk\n", pipe);
  goto clean_sspp;
 }

 if (pdpu->is_virtual) {
  format_list = pdpu->pipe_sblk->virt_format_list;
  num_formats = pdpu->pipe_sblk->virt_num_formats;
 }
 else {
  format_list = pdpu->pipe_sblk->format_list;
  num_formats = pdpu->pipe_sblk->num_formats;
 }

 ret = drm_universal_plane_init(dev, plane, 0xff, &dpu_plane_funcs,
    format_list, num_formats,
    supported_format_modifiers, type, ((void*)0));
 if (ret)
  goto clean_sspp;

 pdpu->catalog = kms->catalog;

 if (kms->catalog->mixer_count &&
  kms->catalog->mixer[0].sblk->maxblendstages) {
  zpos_max = kms->catalog->mixer[0].sblk->maxblendstages - 1;
  if (zpos_max > DPU_STAGE_MAX - DPU_STAGE_0 - 1)
   zpos_max = DPU_STAGE_MAX - DPU_STAGE_0 - 1;
 }

 ret = drm_plane_create_zpos_property(plane, 0, 0, zpos_max);
 if (ret)
  DPU_ERROR("failed to install zpos property, rc = %d\n", ret);

 drm_plane_create_rotation_property(plane,
   DRM_MODE_ROTATE_0,
   DRM_MODE_ROTATE_0 |
   DRM_MODE_ROTATE_180 |
   DRM_MODE_REFLECT_X |
   DRM_MODE_REFLECT_Y);

 drm_plane_enable_fb_damage_clips(plane);


 drm_plane_helper_add(plane, &dpu_plane_helper_funcs);


 snprintf(pdpu->pipe_name, DPU_NAME_SIZE, "plane%u", plane->base.id);

 mutex_init(&pdpu->lock);

 DPU_DEBUG("%s created for pipe:%u id:%u virtual:%u\n", pdpu->pipe_name,
     pipe, plane->base.id, master_plane_id);
 return plane;

clean_sspp:
 if (pdpu && pdpu->pipe_hw)
  dpu_hw_sspp_destroy(pdpu->pipe_hw);
clean_plane:
 kfree(pdpu);
 return ERR_PTR(ret);
}
