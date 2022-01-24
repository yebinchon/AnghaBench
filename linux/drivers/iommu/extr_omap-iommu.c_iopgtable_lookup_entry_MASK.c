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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct omap_iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct omap_iommu *obj, u32 da, u32 **ppgd, u32 **ppte)
{
	u32 *iopgd, *iopte = NULL;

	iopgd = FUNC1(obj, da);
	if (!*iopgd)
		goto out;

	if (FUNC0(*iopgd))
		iopte = FUNC2(iopgd, da);
out:
	*ppgd = iopgd;
	*ppte = iopte;
}