
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct radeon_sa_manager {unsigned int size; int * bo; int * flist; int olist; int * hole; void* align; void* domain; int wq; } ;
struct radeon_device {int dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int RADEON_NUM_RINGS ;
 int dev_err (int ,char*,int) ;
 int init_waitqueue_head (int *) ;
 int radeon_bo_create (struct radeon_device*,unsigned int,void*,int,void*,void*,int *,int *,int **) ;

int radeon_sa_bo_manager_init(struct radeon_device *rdev,
         struct radeon_sa_manager *sa_manager,
         unsigned size, u32 align, u32 domain, u32 flags)
{
 int i, r;

 init_waitqueue_head(&sa_manager->wq);
 sa_manager->bo = ((void*)0);
 sa_manager->size = size;
 sa_manager->domain = domain;
 sa_manager->align = align;
 sa_manager->hole = &sa_manager->olist;
 INIT_LIST_HEAD(&sa_manager->olist);
 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  INIT_LIST_HEAD(&sa_manager->flist[i]);
 }

 r = radeon_bo_create(rdev, size, align, 1,
        domain, flags, ((void*)0), ((void*)0), &sa_manager->bo);
 if (r) {
  dev_err(rdev->dev, "(%d) failed to allocate bo for manager\n", r);
  return r;
 }

 return r;
}
