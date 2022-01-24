#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kvmgt_guest_info {TYPE_2__* vgpu; } ;
struct gvt_dma {int /*<<< orphan*/  ref; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  cache_lock; } ;
struct TYPE_4__ {TYPE_1__ vdev; } ;

/* Variables and functions */
 struct gvt_dma* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __gvt_dma_release ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(unsigned long handle, dma_addr_t dma_addr)
{
	struct kvmgt_guest_info *info;
	struct gvt_dma *entry;

	if (!FUNC1(handle))
		return;

	info = (struct kvmgt_guest_info *)handle;

	FUNC3(&info->vgpu->vdev.cache_lock);
	entry = FUNC0(info->vgpu, dma_addr);
	if (entry)
		FUNC2(&entry->ref, __gvt_dma_release);
	FUNC4(&info->vgpu->vdev.cache_lock);
}