
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_job {int sched_sync; int sync; int fence; } ;


 int amdgpu_job_free_resources (struct amdgpu_job*) ;
 int amdgpu_sync_free (int *) ;
 int dma_fence_put (int ) ;
 int kfree (struct amdgpu_job*) ;

void amdgpu_job_free(struct amdgpu_job *job)
{
 amdgpu_job_free_resources(job);

 dma_fence_put(job->fence);
 amdgpu_sync_free(&job->sync);
 amdgpu_sync_free(&job->sched_sync);
 kfree(job);
}
