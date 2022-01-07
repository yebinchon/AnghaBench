
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct kgd_mem {int mapping_flags; int domain; int sync; int process_info; scalar_t__ mapped_to_gpu_memory; int va; int bo; int lock; int bo_va_list; } ;
struct kgd_dev {int dummy; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct dma_buf {struct drm_gem_object* priv; int * ops; } ;
struct amdgpu_vm {int process_info; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo {int preferred_domains; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 int AMDGPU_VM_MTYPE_NC ;
 int AMDGPU_VM_PAGE_EXECUTABLE ;
 int AMDGPU_VM_PAGE_READABLE ;
 int AMDGPU_VM_PAGE_WRITEABLE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int add_kgd_mem_to_kfd_bo_list (struct kgd_mem*,int ,int) ;
 int amdgpu_bo_mmap_offset (struct amdgpu_bo*) ;
 int amdgpu_bo_ref (struct amdgpu_bo*) ;
 int amdgpu_bo_size (struct amdgpu_bo*) ;
 int amdgpu_dmabuf_ops ;
 int amdgpu_sync_create (int *) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;
 struct kgd_mem* kzalloc (int,int ) ;
 int mutex_init (int *) ;

int amdgpu_amdkfd_gpuvm_import_dmabuf(struct kgd_dev *kgd,
          struct dma_buf *dma_buf,
          uint64_t va, void *vm,
          struct kgd_mem **mem, uint64_t *size,
          uint64_t *mmap_offset)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;
 struct drm_gem_object *obj;
 struct amdgpu_bo *bo;
 struct amdgpu_vm *avm = (struct amdgpu_vm *)vm;

 if (dma_buf->ops != &amdgpu_dmabuf_ops)

  return -EINVAL;

 obj = dma_buf->priv;
 if (obj->dev->dev_private != adev)

  return -EINVAL;

 bo = gem_to_amdgpu_bo(obj);
 if (!(bo->preferred_domains & (AMDGPU_GEM_DOMAIN_VRAM |
        AMDGPU_GEM_DOMAIN_GTT)))

  return -EINVAL;

 *mem = kzalloc(sizeof(struct kgd_mem), GFP_KERNEL);
 if (!*mem)
  return -ENOMEM;

 if (size)
  *size = amdgpu_bo_size(bo);

 if (mmap_offset)
  *mmap_offset = amdgpu_bo_mmap_offset(bo);

 INIT_LIST_HEAD(&(*mem)->bo_va_list);
 mutex_init(&(*mem)->lock);
 (*mem)->mapping_flags =
  AMDGPU_VM_PAGE_READABLE | AMDGPU_VM_PAGE_WRITEABLE |
  AMDGPU_VM_PAGE_EXECUTABLE | AMDGPU_VM_MTYPE_NC;

 (*mem)->bo = amdgpu_bo_ref(bo);
 (*mem)->va = va;
 (*mem)->domain = (bo->preferred_domains & AMDGPU_GEM_DOMAIN_VRAM) ?
  AMDGPU_GEM_DOMAIN_VRAM : AMDGPU_GEM_DOMAIN_GTT;
 (*mem)->mapped_to_gpu_memory = 0;
 (*mem)->process_info = avm->process_info;
 add_kgd_mem_to_kfd_bo_list(*mem, avm->process_info, 0);
 amdgpu_sync_create(&(*mem)->sync);

 return 0;
}
