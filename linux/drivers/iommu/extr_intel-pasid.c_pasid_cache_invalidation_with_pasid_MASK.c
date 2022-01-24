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
typedef  int /*<<< orphan*/  u16 ;
struct qi_desc {int qw0; scalar_t__ qw3; scalar_t__ qw2; scalar_t__ qw1; } ;
struct intel_iommu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int QI_PC_PASID_SEL ; 
 int /*<<< orphan*/  FUNC2 (struct qi_desc*,struct intel_iommu*) ; 

__attribute__((used)) static void
FUNC3(struct intel_iommu *iommu,
				    u16 did, int pasid)
{
	struct qi_desc desc;

	desc.qw0 = FUNC0(did) | QI_PC_PASID_SEL | FUNC1(pasid);
	desc.qw1 = 0;
	desc.qw2 = 0;
	desc.qw3 = 0;

	FUNC2(&desc, iommu);
}