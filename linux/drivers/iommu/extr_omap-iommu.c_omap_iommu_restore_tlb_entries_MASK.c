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
struct omap_iommu {int num_cr_ctx; struct cr_regs* cr_ctx; } ;
struct iotlb_lock {int base; int vict; } ;
struct cr_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_iommu*,struct cr_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_iommu*,struct iotlb_lock*) ; 

__attribute__((used)) static void FUNC2(struct omap_iommu *obj)
{
	struct iotlb_lock l;
	struct cr_regs *tmp;
	int i;

	/* no locked tlbs to restore */
	if (!obj->num_cr_ctx)
		return;

	l.base = 0;
	tmp = obj->cr_ctx;
	for (i = 0; i < obj->num_cr_ctx; i++, tmp++) {
		l.vict = i;
		FUNC1(obj, &l);
		FUNC0(obj, tmp);
	}
	l.base = obj->num_cr_ctx;
	l.vict = i;
	FUNC1(obj, &l);
}