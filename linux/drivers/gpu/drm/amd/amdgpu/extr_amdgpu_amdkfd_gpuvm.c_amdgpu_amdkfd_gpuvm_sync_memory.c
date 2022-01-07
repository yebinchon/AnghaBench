
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_mem {int lock; int sync; } ;
struct kgd_dev {int dummy; } ;
struct amdgpu_sync {int dummy; } ;


 int amdgpu_sync_clone (int *,struct amdgpu_sync*) ;
 int amdgpu_sync_create (struct amdgpu_sync*) ;
 int amdgpu_sync_free (struct amdgpu_sync*) ;
 int amdgpu_sync_wait (struct amdgpu_sync*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int amdgpu_amdkfd_gpuvm_sync_memory(
  struct kgd_dev *kgd, struct kgd_mem *mem, bool intr)
{
 struct amdgpu_sync sync;
 int ret;

 amdgpu_sync_create(&sync);

 mutex_lock(&mem->lock);
 amdgpu_sync_clone(&mem->sync, &sync);
 mutex_unlock(&mem->lock);

 ret = amdgpu_sync_wait(&sync, intr);
 amdgpu_sync_free(&sync);
 return ret;
}
