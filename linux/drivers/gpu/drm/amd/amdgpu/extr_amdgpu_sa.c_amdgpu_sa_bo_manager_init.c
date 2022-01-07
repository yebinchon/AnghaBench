
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct amdgpu_sa_manager {unsigned int size; int cpu_ptr; int gpu_addr; int * bo; int * flist; int olist; int * hole; void* align; void* domain; int wq; } ;
struct amdgpu_device {int dev; } ;


 int AMDGPU_SA_NUM_FENCE_LISTS ;
 int INIT_LIST_HEAD (int *) ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,unsigned int,void*,void*,int **,int *,int *) ;
 int dev_err (int ,char*,int) ;
 int init_waitqueue_head (int *) ;
 int memset (int ,int ,unsigned int) ;

int amdgpu_sa_bo_manager_init(struct amdgpu_device *adev,
         struct amdgpu_sa_manager *sa_manager,
         unsigned size, u32 align, u32 domain)
{
 int i, r;

 init_waitqueue_head(&sa_manager->wq);
 sa_manager->bo = ((void*)0);
 sa_manager->size = size;
 sa_manager->domain = domain;
 sa_manager->align = align;
 sa_manager->hole = &sa_manager->olist;
 INIT_LIST_HEAD(&sa_manager->olist);
 for (i = 0; i < AMDGPU_SA_NUM_FENCE_LISTS; ++i)
  INIT_LIST_HEAD(&sa_manager->flist[i]);

 r = amdgpu_bo_create_kernel(adev, size, align, domain, &sa_manager->bo,
    &sa_manager->gpu_addr, &sa_manager->cpu_ptr);
 if (r) {
  dev_err(adev->dev, "(%d) failed to allocate bo for manager\n", r);
  return r;
 }

 memset(sa_manager->cpu_ptr, 0, sa_manager->size);
 return r;
}
