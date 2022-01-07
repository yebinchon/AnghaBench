
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process_device {int * vm; struct file* drm_file; struct kfd_dev* dev; struct kfd_process* process; } ;
struct kfd_process {int ef; int kgd_process_info; int pasid; } ;
struct kfd_dev {int kgd; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int amdgpu_amdkfd_gpuvm_acquire_process_vm (int ,struct file*,int ,int **,int *,int *) ;
 int amdgpu_amdkfd_gpuvm_create_process_vm (int ,int ,int **,int *,int *) ;
 int amdgpu_amdkfd_gpuvm_destroy_process_vm (int ,int *) ;
 int amdgpu_vm_set_task_info (int *) ;
 int kfd_process_device_free_bos (struct kfd_process_device*) ;
 int kfd_process_device_init_cwsr_dgpu (struct kfd_process_device*) ;
 int kfd_process_device_reserve_ib_mem (struct kfd_process_device*) ;
 int pr_err (char*) ;

int kfd_process_device_init_vm(struct kfd_process_device *pdd,
          struct file *drm_file)
{
 struct kfd_process *p;
 struct kfd_dev *dev;
 int ret;

 if (pdd->vm)
  return drm_file ? -EBUSY : 0;

 p = pdd->process;
 dev = pdd->dev;

 if (drm_file)
  ret = amdgpu_amdkfd_gpuvm_acquire_process_vm(
   dev->kgd, drm_file, p->pasid,
   &pdd->vm, &p->kgd_process_info, &p->ef);
 else
  ret = amdgpu_amdkfd_gpuvm_create_process_vm(dev->kgd, p->pasid,
   &pdd->vm, &p->kgd_process_info, &p->ef);
 if (ret) {
  pr_err("Failed to create process VM object\n");
  return ret;
 }

 amdgpu_vm_set_task_info(pdd->vm);

 ret = kfd_process_device_reserve_ib_mem(pdd);
 if (ret)
  goto err_reserve_ib_mem;
 ret = kfd_process_device_init_cwsr_dgpu(pdd);
 if (ret)
  goto err_init_cwsr;

 pdd->drm_file = drm_file;

 return 0;

err_init_cwsr:
err_reserve_ib_mem:
 kfd_process_device_free_bos(pdd);
 if (!drm_file)
  amdgpu_amdkfd_gpuvm_destroy_process_vm(dev->kgd, pdd->vm);
 pdd->vm = ((void*)0);

 return ret;
}
