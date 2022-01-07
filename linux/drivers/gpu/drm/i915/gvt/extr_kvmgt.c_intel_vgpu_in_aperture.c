
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct intel_vgpu {int dummy; } ;


 scalar_t__ vgpu_aperture_offset (struct intel_vgpu*) ;
 scalar_t__ vgpu_aperture_sz (struct intel_vgpu*) ;

__attribute__((used)) static inline bool intel_vgpu_in_aperture(struct intel_vgpu *vgpu, u64 off)
{
 return off >= vgpu_aperture_offset(vgpu) &&
        off < vgpu_aperture_offset(vgpu) + vgpu_aperture_sz(vgpu);
}
