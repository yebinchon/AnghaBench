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
struct kvmgt_guest_info {struct intel_vgpu* vgpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  cache_lock; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;
struct gvt_dma {unsigned long size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  ref; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct intel_vgpu*,unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 struct gvt_dma* FUNC1 (struct intel_vgpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu*,struct gvt_dma*) ; 
 int FUNC3 (struct intel_vgpu*,unsigned long,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu*,unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(unsigned long handle, unsigned long gfn,
		unsigned long size, dma_addr_t *dma_addr)
{
	struct kvmgt_guest_info *info;
	struct intel_vgpu *vgpu;
	struct gvt_dma *entry;
	int ret;

	if (!FUNC5(handle))
		return -EINVAL;

	info = (struct kvmgt_guest_info *)handle;
	vgpu = info->vgpu;

	FUNC7(&info->vgpu->vdev.cache_lock);

	entry = FUNC1(info->vgpu, gfn);
	if (!entry) {
		ret = FUNC3(vgpu, gfn, dma_addr, size);
		if (ret)
			goto err_unlock;

		ret = FUNC0(info->vgpu, gfn, *dma_addr, size);
		if (ret)
			goto err_unmap;
	} else if (entry->size != size) {
		/* the same gfn with different size: unmap and re-map */
		FUNC4(vgpu, gfn, entry->dma_addr, entry->size);
		FUNC2(vgpu, entry);

		ret = FUNC3(vgpu, gfn, dma_addr, size);
		if (ret)
			goto err_unlock;

		ret = FUNC0(info->vgpu, gfn, *dma_addr, size);
		if (ret)
			goto err_unmap;
	} else {
		FUNC6(&entry->ref);
		*dma_addr = entry->dma_addr;
	}

	FUNC8(&info->vgpu->vdev.cache_lock);
	return 0;

err_unmap:
	FUNC4(vgpu, gfn, *dma_addr, size);
err_unlock:
	FUNC8(&info->vgpu->vdev.cache_lock);
	return ret;
}