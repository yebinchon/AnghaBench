#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct kgd_mem {int mapping_flags; int domain; int /*<<< orphan*/  sync; int /*<<< orphan*/  process_info; scalar_t__ mapped_to_gpu_memory; int /*<<< orphan*/  va; int /*<<< orphan*/  bo; int /*<<< orphan*/  lock; int /*<<< orphan*/  bo_va_list; } ;
struct kgd_dev {int dummy; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct dma_buf {struct drm_gem_object* priv; int /*<<< orphan*/ * ops; } ;
struct amdgpu_vm {int /*<<< orphan*/  process_info; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo {int preferred_domains; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;

/* Variables and functions */
 int AMDGPU_GEM_DOMAIN_GTT ; 
 int AMDGPU_GEM_DOMAIN_VRAM ; 
 int AMDGPU_VM_MTYPE_NC ; 
 int AMDGPU_VM_PAGE_EXECUTABLE ; 
 int AMDGPU_VM_PAGE_READABLE ; 
 int AMDGPU_VM_PAGE_WRITEABLE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kgd_mem*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  amdgpu_dmabuf_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct amdgpu_bo* FUNC6 (struct drm_gem_object*) ; 
 struct kgd_mem* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct kgd_dev *kgd,
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
		/* Can't handle non-graphics buffers */
		return -EINVAL;

	obj = dma_buf->priv;
	if (obj->dev->dev_private != adev)
		/* Can't handle buffers from other devices */
		return -EINVAL;

	bo = FUNC6(obj);
	if (!(bo->preferred_domains & (AMDGPU_GEM_DOMAIN_VRAM |
				    AMDGPU_GEM_DOMAIN_GTT)))
		/* Only VRAM and GTT BOs are supported */
		return -EINVAL;

	*mem = FUNC7(sizeof(struct kgd_mem), GFP_KERNEL);
	if (!*mem)
		return -ENOMEM;

	if (size)
		*size = FUNC4(bo);

	if (mmap_offset)
		*mmap_offset = FUNC2(bo);

	FUNC0(&(*mem)->bo_va_list);
	FUNC8(&(*mem)->lock);
	(*mem)->mapping_flags =
		AMDGPU_VM_PAGE_READABLE | AMDGPU_VM_PAGE_WRITEABLE |
		AMDGPU_VM_PAGE_EXECUTABLE | AMDGPU_VM_MTYPE_NC;

	(*mem)->bo = FUNC3(bo);
	(*mem)->va = va;
	(*mem)->domain = (bo->preferred_domains & AMDGPU_GEM_DOMAIN_VRAM) ?
		AMDGPU_GEM_DOMAIN_VRAM : AMDGPU_GEM_DOMAIN_GTT;
	(*mem)->mapped_to_gpu_memory = 0;
	(*mem)->process_info = avm->process_info;
	FUNC1(*mem, avm->process_info, false);
	FUNC5(&(*mem)->sync);

	return 0;
}