
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct radeon_semaphore {int sa_bo; int gpu_addr; scalar_t__ waiters; } ;
struct radeon_device {int ring_tmp_bo; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct radeon_semaphore*) ;
 struct radeon_semaphore* kmalloc (int,int ) ;
 scalar_t__ radeon_sa_bo_cpu_addr (int ) ;
 int radeon_sa_bo_gpu_addr (int ) ;
 int radeon_sa_bo_new (struct radeon_device*,int *,int *,int,int) ;

int radeon_semaphore_create(struct radeon_device *rdev,
       struct radeon_semaphore **semaphore)
{
 int r;

 *semaphore = kmalloc(sizeof(struct radeon_semaphore), GFP_KERNEL);
 if (*semaphore == ((void*)0)) {
  return -ENOMEM;
 }
 r = radeon_sa_bo_new(rdev, &rdev->ring_tmp_bo,
        &(*semaphore)->sa_bo, 8, 8);
 if (r) {
  kfree(*semaphore);
  *semaphore = ((void*)0);
  return r;
 }
 (*semaphore)->waiters = 0;
 (*semaphore)->gpu_addr = radeon_sa_bo_gpu_addr((*semaphore)->sa_bo);

 *((uint64_t *)radeon_sa_bo_cpu_addr((*semaphore)->sa_bo)) = 0;

 return 0;
}
