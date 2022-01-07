
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int vgpu_allocated_fence_num; } ;
struct TYPE_4__ {unsigned int vgpu_allocated_low_gm_size; unsigned int vgpu_allocated_high_gm_size; } ;
struct intel_gvt {int num_types; TYPE_3__* types; TYPE_2__ fence; TYPE_1__ gm; } ;
struct TYPE_6__ {unsigned int low_gm_size; unsigned int high_gm_size; unsigned int fence; unsigned int avail_instance; int name; } ;


 unsigned int HOST_FENCE ;
 unsigned int HOST_HIGH_GM_SIZE ;
 unsigned int HOST_LOW_GM_SIZE ;
 unsigned int gvt_aperture_sz (struct intel_gvt*) ;
 int gvt_dbg_core (char*,int,int ,unsigned int,unsigned int,unsigned int,unsigned int) ;
 unsigned int gvt_fence_sz (struct intel_gvt*) ;
 unsigned int gvt_hidden_sz (struct intel_gvt*) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static void intel_gvt_update_vgpu_types(struct intel_gvt *gvt)
{
 int i;
 unsigned int low_gm_avail, high_gm_avail, fence_avail;
 unsigned int low_gm_min, high_gm_min, fence_min;




 low_gm_avail = gvt_aperture_sz(gvt) - HOST_LOW_GM_SIZE -
  gvt->gm.vgpu_allocated_low_gm_size;
 high_gm_avail = gvt_hidden_sz(gvt) - HOST_HIGH_GM_SIZE -
  gvt->gm.vgpu_allocated_high_gm_size;
 fence_avail = gvt_fence_sz(gvt) - HOST_FENCE -
  gvt->fence.vgpu_allocated_fence_num;

 for (i = 0; i < gvt->num_types; i++) {
  low_gm_min = low_gm_avail / gvt->types[i].low_gm_size;
  high_gm_min = high_gm_avail / gvt->types[i].high_gm_size;
  fence_min = fence_avail / gvt->types[i].fence;
  gvt->types[i].avail_instance = min(min(low_gm_min, high_gm_min),
         fence_min);

  gvt_dbg_core("update type[%d]: %s avail %u low %u high %u fence %u\n",
         i, gvt->types[i].name,
         gvt->types[i].avail_instance, gvt->types[i].low_gm_size,
         gvt->types[i].high_gm_size, gvt->types[i].fence);
 }
}
