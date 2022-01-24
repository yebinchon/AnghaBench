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
typedef  int u32 ;
struct omap_iommu {scalar_t__ has_bus_err_back; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; scalar_t__ iopgd; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMU_GP_REG ; 
 int MMU_GP_REG_BUS_ERR_BACK_EN ; 
 int /*<<< orphan*/  MMU_REVISION ; 
 int /*<<< orphan*/  MMU_TTB ; 
 int /*<<< orphan*/  SZ_16K ; 
 int /*<<< orphan*/  FUNC1 (struct omap_iommu*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_iommu*,int) ; 
 int FUNC4 (struct omap_iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_iommu*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct omap_iommu *obj)
{
	u32 l, pa;

	if (!obj->iopgd || !FUNC0((u32)obj->iopgd,  SZ_16K))
		return -EINVAL;

	pa = FUNC6(obj->iopgd);
	if (!FUNC0(pa, SZ_16K))
		return -EINVAL;

	l = FUNC4(obj, MMU_REVISION);
	FUNC2(obj->dev, "%s: version %d.%d\n", obj->name,
		 (l >> 4) & 0xf, l & 0xf);

	FUNC5(obj, pa, MMU_TTB);

	FUNC3(obj, true);

	if (obj->has_bus_err_back)
		FUNC5(obj, MMU_GP_REG_BUS_ERR_BACK_EN, MMU_GP_REG);

	FUNC1(obj, true);

	return 0;
}