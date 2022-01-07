
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_vgpu {int vgpu_lock; scalar_t__ failsafe; struct intel_gvt* gvt; } ;
struct intel_gvt {int dummy; } ;


 int EINVAL ;
 int IS_ALIGNED (unsigned int,int) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int failsafe_emulate_mmio_rw (struct intel_vgpu*,int ,void*,unsigned int,int) ;
 int gvt_vgpu_err (char*,unsigned int,unsigned int) ;
 int intel_gvt_hypervisor_write_gpa (struct intel_vgpu*,int ,void*,unsigned int) ;
 int intel_gvt_mmio_set_accessed (struct intel_gvt*,unsigned int) ;
 int intel_vgpu_emulate_ggtt_mmio_write (struct intel_vgpu*,unsigned int,void*,unsigned int) ;
 unsigned int intel_vgpu_gpa_to_mmio_offset (struct intel_vgpu*,int ) ;
 int intel_vgpu_mmio_reg_rw (struct intel_vgpu*,unsigned int,void*,unsigned int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ reg_is_gtt (struct intel_gvt*,unsigned int) ;
 int reg_is_mmio (struct intel_gvt*,unsigned int) ;

int intel_vgpu_emulate_mmio_write(struct intel_vgpu *vgpu, u64 pa,
  void *p_data, unsigned int bytes)
{
 struct intel_gvt *gvt = vgpu->gvt;
 unsigned int offset = 0;
 int ret = -EINVAL;

 if (vgpu->failsafe) {
  failsafe_emulate_mmio_rw(vgpu, pa, p_data, bytes, 0);
  return 0;
 }

 mutex_lock(&vgpu->vgpu_lock);

 offset = intel_vgpu_gpa_to_mmio_offset(vgpu, pa);

 if (WARN_ON(bytes > 8))
  goto err;

 if (reg_is_gtt(gvt, offset)) {
  if (WARN_ON(!IS_ALIGNED(offset, 4) && !IS_ALIGNED(offset, 8)))
   goto err;
  if (WARN_ON(bytes != 4 && bytes != 8))
   goto err;
  if (WARN_ON(!reg_is_gtt(gvt, offset + bytes - 1)))
   goto err;

  ret = intel_vgpu_emulate_ggtt_mmio_write(vgpu, offset,
    p_data, bytes);
  if (ret)
   goto err;
  goto out;
 }

 if (WARN_ON_ONCE(!reg_is_mmio(gvt, offset))) {
  ret = intel_gvt_hypervisor_write_gpa(vgpu, pa, p_data, bytes);
  goto out;
 }

 ret = intel_vgpu_mmio_reg_rw(vgpu, offset, p_data, bytes, 0);
 if (ret < 0)
  goto err;

 intel_gvt_mmio_set_accessed(gvt, offset);
 ret = 0;
 goto out;
err:
 gvt_vgpu_err("fail to emulate MMIO write %08x len %d\n", offset,
       bytes);
out:
 mutex_unlock(&vgpu->vgpu_lock);
 return ret;
}
