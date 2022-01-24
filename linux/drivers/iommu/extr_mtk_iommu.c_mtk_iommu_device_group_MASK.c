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
struct mtk_iommu_data {struct iommu_group* m4u_group; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct iommu_group* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct iommu_group* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_group*) ; 
 struct mtk_iommu_data* FUNC5 () ; 

__attribute__((used)) static struct iommu_group *FUNC6(struct device *dev)
{
	struct mtk_iommu_data *data = FUNC5();

	if (!data)
		return FUNC0(-ENODEV);

	/* All the client devices are in the same m4u iommu-group */
	if (!data->m4u_group) {
		data->m4u_group = FUNC3();
		if (FUNC1(data->m4u_group))
			FUNC2(dev, "Failed to allocate M4U IOMMU group\n");
	} else {
		FUNC4(data->m4u_group);
	}
	return data->m4u_group;
}