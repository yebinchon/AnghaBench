
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int pv_notified; } ;


 int EINVAL ;
 int GVT_FAILSAFE_UNSUPPORTED_GUEST ;
 int enter_failsafe_mode (struct intel_vgpu*,int ) ;
 int gvt_vgpu_err (char*,unsigned int,unsigned int) ;
 int memset (void*,int ,unsigned int) ;
 unsigned int vgpu_fence_sz (struct intel_vgpu*) ;

__attribute__((used)) static int sanitize_fence_mmio_access(struct intel_vgpu *vgpu,
  unsigned int fence_num, void *p_data, unsigned int bytes)
{
 unsigned int max_fence = vgpu_fence_sz(vgpu);

 if (fence_num >= max_fence) {
  gvt_vgpu_err("access oob fence reg %d/%d\n",
        fence_num, max_fence);





  if (!vgpu->pv_notified)
   enter_failsafe_mode(vgpu,
     GVT_FAILSAFE_UNSUPPORTED_GUEST);

  memset(p_data, 0, bytes);
  return -EINVAL;
 }
 return 0;
}
