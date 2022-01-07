
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int last_update_us; int accum_us; int accum_us_vis; int lock; int log2_max_MBps; } ;
struct TYPE_5__ {int * man; } ;
struct TYPE_6__ {TYPE_1__ bdev; } ;
struct TYPE_8__ {int real_vram_size; int visible_vram_size; } ;
struct amdgpu_device {int flags; TYPE_3__ mm_stats; TYPE_2__ mman; TYPE_4__ gmc; int vram_pin_size; } ;
typedef int s64 ;


 int AMD_IS_APU ;
 size_t TTM_PL_VRAM ;
 int amdgpu_gmc_vram_full_visible (TYPE_4__*) ;
 int amdgpu_vram_mgr_usage (int *) ;
 int amdgpu_vram_mgr_vis_usage (int *) ;
 int atomic64_read (int *) ;
 int bytes_to_us (struct amdgpu_device*,int) ;
 int ktime_get () ;
 int ktime_to_us (int ) ;
 void* max (int,int) ;
 void* min (int,int const) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int us_to_bytes (struct amdgpu_device*,int) ;

__attribute__((used)) static void amdgpu_cs_get_threshold_for_moves(struct amdgpu_device *adev,
           u64 *max_bytes,
           u64 *max_vis_bytes)
{
 s64 time_us, increment_us;
 u64 free_vram, total_vram, used_vram;
 const s64 us_upper_bound = 200000;

 if (!adev->mm_stats.log2_max_MBps) {
  *max_bytes = 0;
  *max_vis_bytes = 0;
  return;
 }

 total_vram = adev->gmc.real_vram_size - atomic64_read(&adev->vram_pin_size);
 used_vram = amdgpu_vram_mgr_usage(&adev->mman.bdev.man[TTM_PL_VRAM]);
 free_vram = used_vram >= total_vram ? 0 : total_vram - used_vram;

 spin_lock(&adev->mm_stats.lock);


 time_us = ktime_to_us(ktime_get());
 increment_us = time_us - adev->mm_stats.last_update_us;
 adev->mm_stats.last_update_us = time_us;
 adev->mm_stats.accum_us = min(adev->mm_stats.accum_us + increment_us,
                                      us_upper_bound);
 if (free_vram >= 128 * 1024 * 1024 || free_vram >= total_vram / 8) {
  s64 min_us;




  if (!(adev->flags & AMD_IS_APU))
   min_us = bytes_to_us(adev, free_vram / 4);
  else
   min_us = 0;

  adev->mm_stats.accum_us = max(min_us, adev->mm_stats.accum_us);
 }




 *max_bytes = us_to_bytes(adev, adev->mm_stats.accum_us);


 if (!amdgpu_gmc_vram_full_visible(&adev->gmc)) {
  u64 total_vis_vram = adev->gmc.visible_vram_size;
  u64 used_vis_vram =
   amdgpu_vram_mgr_vis_usage(&adev->mman.bdev.man[TTM_PL_VRAM]);

  if (used_vis_vram < total_vis_vram) {
   u64 free_vis_vram = total_vis_vram - used_vis_vram;
   adev->mm_stats.accum_us_vis = min(adev->mm_stats.accum_us_vis +
         increment_us, us_upper_bound);

   if (free_vis_vram >= total_vis_vram / 2)
    adev->mm_stats.accum_us_vis =
     max(bytes_to_us(adev, free_vis_vram / 2),
         adev->mm_stats.accum_us_vis);
  }

  *max_vis_bytes = us_to_bytes(adev, adev->mm_stats.accum_us_vis);
 } else {
  *max_vis_bytes = 0;
 }

 spin_unlock(&adev->mm_stats.lock);
}
