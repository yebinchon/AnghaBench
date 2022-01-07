
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct vc4_shader_state {int dummy; } ;
struct vc4_exec_info {void* shader_rec_u; void* uniforms_u; int shader_state_size; scalar_t__ shader_rec_size; scalar_t__ uniforms_size; int bin_dep_seqno; int bin_bo_used; scalar_t__ found_tile_binning_mode_config_packet; TYPE_1__* exec_bo; scalar_t__ uniforms_p; scalar_t__ uniforms_v; scalar_t__ shader_rec_p; scalar_t__ shader_rec_v; void* bin_u; scalar_t__ ct0ca; int unref_list; void* shader_state; struct drm_vc4_submit_cl* args; } ;
struct vc4_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ paddr; scalar_t__ vaddr; int base; } ;
struct vc4_bo {TYPE_1__ base; } ;
struct drm_vc4_submit_cl {scalar_t__ bin_cl_size; scalar_t__ shader_rec_size; scalar_t__ uniforms_size; int shader_rec_count; int uniforms; int shader_rec; int bin_cl; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int unref_head; } ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct vc4_bo*) ;
 int PTR_ERR (struct vc4_bo*) ;
 int UINT_MAX ;
 int VC4_BO_TYPE_BCL ;
 scalar_t__ copy_from_user (void*,int ,scalar_t__) ;
 int kvfree (void*) ;
 void* kvmalloc_array (scalar_t__,int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ roundup (scalar_t__,int) ;
 TYPE_2__* to_vc4_bo (int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int u64_to_user_ptr (int ) ;
 struct vc4_bo* vc4_bo_create (struct drm_device*,scalar_t__,int,int ) ;
 int vc4_v3d_bin_bo_get (struct vc4_dev*,int *) ;
 int vc4_validate_bin_cl (struct drm_device*,scalar_t__,void*,struct vc4_exec_info*) ;
 int vc4_validate_shader_recs (struct drm_device*,struct vc4_exec_info*) ;
 int vc4_wait_for_seqno (struct drm_device*,int ,unsigned long long,int) ;

__attribute__((used)) static int
vc4_get_bcl(struct drm_device *dev, struct vc4_exec_info *exec)
{
 struct drm_vc4_submit_cl *args = exec->args;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 void *temp = ((void*)0);
 void *bin;
 int ret = 0;
 uint32_t bin_offset = 0;
 uint32_t shader_rec_offset = roundup(bin_offset + args->bin_cl_size,
          16);
 uint32_t uniforms_offset = shader_rec_offset + args->shader_rec_size;
 uint32_t exec_size = uniforms_offset + args->uniforms_size;
 uint32_t temp_size = exec_size + (sizeof(struct vc4_shader_state) *
       args->shader_rec_count);
 struct vc4_bo *bo;

 if (shader_rec_offset < args->bin_cl_size ||
     uniforms_offset < shader_rec_offset ||
     exec_size < uniforms_offset ||
     args->shader_rec_count >= (UINT_MAX /
       sizeof(struct vc4_shader_state)) ||
     temp_size < exec_size) {
  DRM_DEBUG("overflow in exec arguments\n");
  ret = -EINVAL;
  goto fail;
 }
 temp = kvmalloc_array(temp_size, 1, GFP_KERNEL);
 if (!temp) {
  DRM_ERROR("Failed to allocate storage for copying "
     "in bin/render CLs.\n");
  ret = -ENOMEM;
  goto fail;
 }
 bin = temp + bin_offset;
 exec->shader_rec_u = temp + shader_rec_offset;
 exec->uniforms_u = temp + uniforms_offset;
 exec->shader_state = temp + exec_size;
 exec->shader_state_size = args->shader_rec_count;

 if (copy_from_user(bin,
      u64_to_user_ptr(args->bin_cl),
      args->bin_cl_size)) {
  ret = -EFAULT;
  goto fail;
 }

 if (copy_from_user(exec->shader_rec_u,
      u64_to_user_ptr(args->shader_rec),
      args->shader_rec_size)) {
  ret = -EFAULT;
  goto fail;
 }

 if (copy_from_user(exec->uniforms_u,
      u64_to_user_ptr(args->uniforms),
      args->uniforms_size)) {
  ret = -EFAULT;
  goto fail;
 }

 bo = vc4_bo_create(dev, exec_size, 1, VC4_BO_TYPE_BCL);
 if (IS_ERR(bo)) {
  DRM_ERROR("Couldn't allocate BO for binning\n");
  ret = PTR_ERR(bo);
  goto fail;
 }
 exec->exec_bo = &bo->base;

 list_add_tail(&to_vc4_bo(&exec->exec_bo->base)->unref_head,
        &exec->unref_list);

 exec->ct0ca = exec->exec_bo->paddr + bin_offset;

 exec->bin_u = bin;

 exec->shader_rec_v = exec->exec_bo->vaddr + shader_rec_offset;
 exec->shader_rec_p = exec->exec_bo->paddr + shader_rec_offset;
 exec->shader_rec_size = args->shader_rec_size;

 exec->uniforms_v = exec->exec_bo->vaddr + uniforms_offset;
 exec->uniforms_p = exec->exec_bo->paddr + uniforms_offset;
 exec->uniforms_size = args->uniforms_size;

 ret = vc4_validate_bin_cl(dev,
      exec->exec_bo->vaddr + bin_offset,
      bin,
      exec);
 if (ret)
  goto fail;

 ret = vc4_validate_shader_recs(dev, exec);
 if (ret)
  goto fail;

 if (exec->found_tile_binning_mode_config_packet) {
  ret = vc4_v3d_bin_bo_get(vc4, &exec->bin_bo_used);
  if (ret)
   goto fail;
 }





 ret = vc4_wait_for_seqno(dev, exec->bin_dep_seqno, ~0ull, 1);

fail:
 kvfree(temp);
 return ret;
}
