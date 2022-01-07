
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int real_vram_size; } ;
struct radeon_device {int vram_usage; TYPE_1__ mc; } ;


 int atomic64_read (int *) ;
 int max (int,int) ;

__attribute__((used)) static u64 radeon_bo_get_threshold_for_moves(struct radeon_device *rdev)
{
 u64 real_vram_size = rdev->mc.real_vram_size;
 u64 vram_usage = atomic64_read(&rdev->vram_usage);
 u64 half_vram = real_vram_size >> 1;
 u64 half_free_vram = vram_usage >= half_vram ? 0 : half_vram - vram_usage;
 u64 bytes_moved_threshold = half_free_vram >> 1;
 return max(bytes_moved_threshold, 1024*1024ull);
}
