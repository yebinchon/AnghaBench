
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_vm {int dummy; } ;
struct radeon_ib {int ring; int is_const_ib; TYPE_1__* sa_bo; scalar_t__ gpu_addr; struct radeon_vm* vm; int ptr; int * fence; int sync; } ;
struct radeon_device {int dev; int ring_tmp_bo; } ;
struct TYPE_4__ {scalar_t__ soffset; } ;


 scalar_t__ RADEON_VA_IB_OFFSET ;
 int dev_err (int ,char*,int) ;
 int radeon_sa_bo_cpu_addr (TYPE_1__*) ;
 scalar_t__ radeon_sa_bo_gpu_addr (TYPE_1__*) ;
 int radeon_sa_bo_new (struct radeon_device*,int *,TYPE_1__**,unsigned int,int) ;
 int radeon_sync_create (int *) ;

int radeon_ib_get(struct radeon_device *rdev, int ring,
    struct radeon_ib *ib, struct radeon_vm *vm,
    unsigned size)
{
 int r;

 r = radeon_sa_bo_new(rdev, &rdev->ring_tmp_bo, &ib->sa_bo, size, 256);
 if (r) {
  dev_err(rdev->dev, "failed to get a new IB (%d)\n", r);
  return r;
 }

 radeon_sync_create(&ib->sync);

 ib->ring = ring;
 ib->fence = ((void*)0);
 ib->ptr = radeon_sa_bo_cpu_addr(ib->sa_bo);
 ib->vm = vm;
 if (vm) {



  ib->gpu_addr = ib->sa_bo->soffset + RADEON_VA_IB_OFFSET;
 } else {
  ib->gpu_addr = radeon_sa_bo_gpu_addr(ib->sa_bo);
 }
 ib->is_const_ib = 0;

 return 0;
}
