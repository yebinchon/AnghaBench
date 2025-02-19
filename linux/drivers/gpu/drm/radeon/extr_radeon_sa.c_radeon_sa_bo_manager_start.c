
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_sa_manager {int * bo; int cpu_ptr; int gpu_addr; int domain; } ;
struct radeon_device {int dev; } ;


 int EINVAL ;
 int dev_err (int ,char*,...) ;
 int radeon_bo_kmap (int *,int *) ;
 int radeon_bo_pin (int *,int ,int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unreserve (int *) ;

int radeon_sa_bo_manager_start(struct radeon_device *rdev,
          struct radeon_sa_manager *sa_manager)
{
 int r;

 if (sa_manager->bo == ((void*)0)) {
  dev_err(rdev->dev, "no bo for sa manager\n");
  return -EINVAL;
 }


 r = radeon_bo_reserve(sa_manager->bo, 0);
 if (r) {
  dev_err(rdev->dev, "(%d) failed to reserve manager bo\n", r);
  return r;
 }
 r = radeon_bo_pin(sa_manager->bo, sa_manager->domain, &sa_manager->gpu_addr);
 if (r) {
  radeon_bo_unreserve(sa_manager->bo);
  dev_err(rdev->dev, "(%d) failed to pin manager bo\n", r);
  return r;
 }
 r = radeon_bo_kmap(sa_manager->bo, &sa_manager->cpu_ptr);
 radeon_bo_unreserve(sa_manager->bo);
 return r;
}
