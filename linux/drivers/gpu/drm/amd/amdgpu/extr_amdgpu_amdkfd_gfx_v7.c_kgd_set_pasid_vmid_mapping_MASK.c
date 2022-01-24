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
typedef  unsigned int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 unsigned int ATC_VMID0_PASID_MAPPING__VALID_MASK ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct amdgpu_device* FUNC3 (struct kgd_dev*) ; 
 scalar_t__ mmATC_VMID0_PASID_MAPPING ; 
 scalar_t__ mmATC_VMID_PASID_MAPPING_UPDATE_STATUS ; 
 scalar_t__ mmIH_VMID_0_LUT ; 

__attribute__((used)) static int FUNC4(struct kgd_dev *kgd, unsigned int pasid,
					unsigned int vmid)
{
	struct amdgpu_device *adev = FUNC3(kgd);

	/*
	 * We have to assume that there is no outstanding mapping.
	 * The ATC_VMID_PASID_MAPPING_UPDATE_STATUS bit could be 0 because
	 * a mapping is in progress or because a mapping finished and the
	 * SW cleared it. So the protocol is to always wait & clear.
	 */
	uint32_t pasid_mapping = (pasid == 0) ? 0 : (uint32_t)pasid |
			ATC_VMID0_PASID_MAPPING__VALID_MASK;

	FUNC1(mmATC_VMID0_PASID_MAPPING + vmid, pasid_mapping);

	while (!(FUNC0(mmATC_VMID_PASID_MAPPING_UPDATE_STATUS) & (1U << vmid)))
		FUNC2();
	FUNC1(mmATC_VMID_PASID_MAPPING_UPDATE_STATUS, 1U << vmid);

	/* Mapping vmid to pasid also for IH block */
	FUNC1(mmIH_VMID_0_LUT + vmid, pasid_mapping);

	return 0;
}