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
struct device_domain_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  iommu_devinfo_cache ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline int FUNC2(void)
{
	int ret = 0;

	iommu_devinfo_cache = FUNC0("iommu_devinfo",
					 sizeof(struct device_domain_info),
					 0,
					 SLAB_HWCACHE_ALIGN,
					 NULL);
	if (!iommu_devinfo_cache) {
		FUNC1("Couldn't create devinfo cache\n");
		ret = -ENOMEM;
	}

	return ret;
}