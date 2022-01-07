
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_page_track {int tracked; } ;
struct intel_vgpu {int dummy; } ;


 int ENXIO ;
 int intel_gvt_hypervisor_enable_page_track (struct intel_vgpu*,unsigned long) ;
 struct intel_vgpu_page_track* intel_vgpu_find_page_track (struct intel_vgpu*,unsigned long) ;

int intel_vgpu_enable_page_track(struct intel_vgpu *vgpu, unsigned long gfn)
{
 struct intel_vgpu_page_track *track;
 int ret;

 track = intel_vgpu_find_page_track(vgpu, gfn);
 if (!track)
  return -ENXIO;

 if (track->tracked)
  return 0;

 ret = intel_gvt_hypervisor_enable_page_track(vgpu, gfn);
 if (ret)
  return ret;
 track->tracked = 1;
 return 0;
}
