
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_mem {int dummy; } ;
struct kfd_process_device {int vm; struct kfd_dev* dev; } ;
struct kfd_dev {int kgd; } ;


 int amdgpu_amdkfd_gpuvm_free_memory_of_gpu (int ,struct kgd_mem*) ;
 int amdgpu_amdkfd_gpuvm_unmap_memory_from_gpu (int ,struct kgd_mem*,int ) ;

__attribute__((used)) static void kfd_process_free_gpuvm(struct kgd_mem *mem,
   struct kfd_process_device *pdd)
{
 struct kfd_dev *dev = pdd->dev;

 amdgpu_amdkfd_gpuvm_unmap_memory_from_gpu(dev->kgd, mem, pdd->vm);
 amdgpu_amdkfd_gpuvm_free_memory_of_gpu(dev->kgd, mem);
}
