#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct omap_iommu {int dummy; } ;
struct iotlb_lock {int /*<<< orphan*/  vict; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_iommu*,int /*<<< orphan*/ ) ; 

void FUNC3(struct omap_iommu *obj, struct iotlb_lock *l)
{
	u32 val;

	val = FUNC2(obj, MMU_LOCK);

	l->base = FUNC0(val);
	l->vict = FUNC1(val);
}