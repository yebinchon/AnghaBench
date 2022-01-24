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
struct omap_iommu {int /*<<< orphan*/  page_table_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_iommu*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct omap_iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC4(struct omap_iommu *obj, u32 da)
{
	size_t bytes;

	FUNC2(&obj->page_table_lock);

	bytes = FUNC1(obj, da);
	FUNC0(obj, da);

	FUNC3(&obj->page_table_lock);

	return bytes;
}