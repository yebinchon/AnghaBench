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
struct TYPE_2__ {int /*<<< orphan*/  nr_cache_entries; int /*<<< orphan*/  dma_addr_cache; int /*<<< orphan*/  gfn_cache; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;
struct gvt_dma {int /*<<< orphan*/  dma_addr_node; int /*<<< orphan*/  gfn_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gvt_dma*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct intel_vgpu *vgpu,
				struct gvt_dma *entry)
{
	FUNC1(&entry->gfn_node, &vgpu->vdev.gfn_cache);
	FUNC1(&entry->dma_addr_node, &vgpu->vdev.dma_addr_cache);
	FUNC0(entry);
	vgpu->vdev.nr_cache_entries--;
}