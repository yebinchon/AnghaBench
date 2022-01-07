
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_vm {int dummy; } ;
struct TYPE_3__ {int * sched; } ;
struct amdgpu_job {unsigned int num_ibs; int vm_pd_addr; int vram_lost_counter; int sched_sync; int sync; void* ibs; struct amdgpu_vm* vm; TYPE_1__ base; } ;
struct amdgpu_ib {int dummy; } ;
struct amdgpu_device {int vram_lost_counter; TYPE_2__** rings; } ;
struct TYPE_4__ {int sched; } ;


 int AMDGPU_BO_INVALID_OFFSET ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amdgpu_sync_create (int *) ;
 int atomic_read (int *) ;
 struct amdgpu_job* kzalloc (size_t,int ) ;

int amdgpu_job_alloc(struct amdgpu_device *adev, unsigned num_ibs,
       struct amdgpu_job **job, struct amdgpu_vm *vm)
{
 size_t size = sizeof(struct amdgpu_job);

 if (num_ibs == 0)
  return -EINVAL;

 size += sizeof(struct amdgpu_ib) * num_ibs;

 *job = kzalloc(size, GFP_KERNEL);
 if (!*job)
  return -ENOMEM;





 (*job)->base.sched = &adev->rings[0]->sched;
 (*job)->vm = vm;
 (*job)->ibs = (void *)&(*job)[1];
 (*job)->num_ibs = num_ibs;

 amdgpu_sync_create(&(*job)->sync);
 amdgpu_sync_create(&(*job)->sched_sync);
 (*job)->vram_lost_counter = atomic_read(&adev->vram_lost_counter);
 (*job)->vm_pd_addr = AMDGPU_BO_INVALID_OFFSET;

 return 0;
}
