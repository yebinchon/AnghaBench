
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_job {int * ibs; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_ib_get (struct amdgpu_device*,int *,unsigned int,int *) ;
 int amdgpu_job_alloc (struct amdgpu_device*,int,struct amdgpu_job**,int *) ;
 int kfree (struct amdgpu_job*) ;

int amdgpu_job_alloc_with_ib(struct amdgpu_device *adev, unsigned size,
        struct amdgpu_job **job)
{
 int r;

 r = amdgpu_job_alloc(adev, 1, job, ((void*)0));
 if (r)
  return r;

 r = amdgpu_ib_get(adev, ((void*)0), size, &(*job)->ibs[0]);
 if (r)
  kfree(*job);

 return r;
}
