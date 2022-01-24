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
typedef  int /*<<< orphan*/  uint32_t ;
struct qxl_reloc_info {int dst_offset; int /*<<< orphan*/  dst_bo; TYPE_1__* src_bo; } ;
struct qxl_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  surface_id; int /*<<< orphan*/  is_primary; } ;

/* Variables and functions */
 int PAGE_MASK ; 
 void* FUNC0 (struct qxl_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qxl_device*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC2(struct qxl_device *qdev, struct qxl_reloc_info *info)
{
	uint32_t id = 0;
	void *reloc_page;

	if (info->src_bo && !info->src_bo->is_primary)
		id = info->src_bo->surface_id;

	reloc_page = FUNC0(qdev, info->dst_bo, info->dst_offset & PAGE_MASK);
	*(uint32_t *)(reloc_page + (info->dst_offset & ~PAGE_MASK)) = id;
	FUNC1(qdev, info->dst_bo, reloc_page);
}