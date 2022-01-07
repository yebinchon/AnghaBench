
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_ppgtt_spt {int dummy; } ;
struct intel_vgpu_page_track {scalar_t__ handler; struct intel_vgpu_ppgtt_spt* priv_data; } ;
struct intel_vgpu {int dummy; } ;


 struct intel_vgpu_page_track* intel_vgpu_find_page_track (struct intel_vgpu*,unsigned long) ;
 scalar_t__ ppgtt_write_protection_handler ;

__attribute__((used)) static struct intel_vgpu_ppgtt_spt *intel_vgpu_find_spt_by_gfn(
  struct intel_vgpu *vgpu, unsigned long gfn)
{
 struct intel_vgpu_page_track *track;

 track = intel_vgpu_find_page_track(vgpu, gfn);
 if (track && track->handler == ppgtt_write_protection_handler)
  return track->priv_data;

 return ((void*)0);
}
