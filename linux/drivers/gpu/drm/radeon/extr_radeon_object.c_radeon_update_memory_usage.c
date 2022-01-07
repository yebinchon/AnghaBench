
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct radeon_device {int vram_usage; int gtt_usage; } ;
struct TYPE_2__ {scalar_t__ num_pages; } ;
struct radeon_bo {TYPE_1__ tbo; struct radeon_device* rdev; } ;


 int PAGE_SHIFT ;


 int atomic64_add (int,int *) ;
 int atomic64_sub (int,int *) ;

__attribute__((used)) static void radeon_update_memory_usage(struct radeon_bo *bo,
           unsigned mem_type, int sign)
{
 struct radeon_device *rdev = bo->rdev;
 u64 size = (u64)bo->tbo.num_pages << PAGE_SHIFT;

 switch (mem_type) {
 case 129:
  if (sign > 0)
   atomic64_add(size, &rdev->gtt_usage);
  else
   atomic64_sub(size, &rdev->gtt_usage);
  break;
 case 128:
  if (sign > 0)
   atomic64_add(size, &rdev->vram_usage);
  else
   atomic64_sub(size, &rdev->vram_usage);
  break;
 }
}
