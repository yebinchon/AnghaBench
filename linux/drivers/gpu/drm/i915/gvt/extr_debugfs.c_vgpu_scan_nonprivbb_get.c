
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_vgpu {int scan_nonprivbb; } ;



__attribute__((used)) static int
vgpu_scan_nonprivbb_get(void *data, u64 *val)
{
 struct intel_vgpu *vgpu = (struct intel_vgpu *)data;
 *val = vgpu->scan_nonprivbb;
 return 0;
}
