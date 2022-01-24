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
struct dmar_drhd_unit {scalar_t__ iommu; scalar_t__ devices_cnt; scalar_t__ devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_drhd_unit*) ; 

__attribute__((used)) static void FUNC3(struct dmar_drhd_unit *dmaru)
{
	if (dmaru->devices && dmaru->devices_cnt)
		FUNC0(&dmaru->devices, &dmaru->devices_cnt);
	if (dmaru->iommu)
		FUNC1(dmaru->iommu);
	FUNC2(dmaru);
}