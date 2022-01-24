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
typedef  int /*<<< orphan*/  u64 ;
struct amd_iommu_fault {int /*<<< orphan*/  flags; int /*<<< orphan*/  tag; int /*<<< orphan*/  device_id; int /*<<< orphan*/  pasid; int /*<<< orphan*/  address; } ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PPR_REQ_FAULT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct amd_iommu_fault*) ; 
 int /*<<< orphan*/  ppr_notifier ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct amd_iommu *iommu, u64 *raw)
{
	struct amd_iommu_fault fault;

	if (FUNC3(raw[0]) != PPR_REQ_FAULT) {
		FUNC6("Unknown PPR request received\n");
		return;
	}

	fault.address   = raw[1];
	fault.pasid     = FUNC2(raw[0]);
	fault.device_id = FUNC0(raw[0]);
	fault.tag       = FUNC4(raw[0]);
	fault.flags     = FUNC1(raw[0]);

	FUNC5(&ppr_notifier, 0, &fault);
}