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
struct protection_domain {int /*<<< orphan*/ * dev_iommu; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/ * amd_iommus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct protection_domain *domain)
{
	int i;

	for (i = 0; i < FUNC0(); ++i) {
		if (domain && !domain->dev_iommu[i])
			continue;

		/*
		 * Devices of this domain are behind this IOMMU
		 * We need to wait for completion of all commands.
		 */
		FUNC1(amd_iommus[i]);
	}
}