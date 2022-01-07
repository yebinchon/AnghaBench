
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_workload {struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int dummy; } ;


 int gvt_vgpu_err (char*) ;
 int scan_workload (struct intel_vgpu_workload*) ;
 int shadow_workload_ring_buffer (struct intel_vgpu_workload*) ;

int intel_gvt_scan_and_shadow_ringbuffer(struct intel_vgpu_workload *workload)
{
 int ret;
 struct intel_vgpu *vgpu = workload->vgpu;

 ret = shadow_workload_ring_buffer(workload);
 if (ret) {
  gvt_vgpu_err("fail to shadow workload ring_buffer\n");
  return ret;
 }

 ret = scan_workload(workload);
 if (ret) {
  gvt_vgpu_err("scan workload error\n");
  return ret;
 }
 return 0;
}
