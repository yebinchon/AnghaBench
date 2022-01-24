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
struct omap_iommu {int /*<<< orphan*/  dev; } ;
struct iotlb_lock {scalar_t__ vict; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_GFLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct omap_iommu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_iommu*,struct iotlb_lock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct omap_iommu *obj)
{
	struct iotlb_lock l;

	FUNC2(obj->dev);

	l.base = 0;
	l.vict = 0;
	FUNC1(obj, &l);

	FUNC0(obj, 1, MMU_GFLUSH);

	FUNC3(obj->dev);
}