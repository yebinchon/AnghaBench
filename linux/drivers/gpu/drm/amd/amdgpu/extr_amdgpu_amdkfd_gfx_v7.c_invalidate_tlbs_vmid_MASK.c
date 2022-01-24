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
typedef  int uint16_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  mmVM_INVALIDATE_REQUEST ; 
 int /*<<< orphan*/  mmVM_INVALIDATE_RESPONSE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct kgd_dev *kgd, uint16_t vmid)
{
	struct amdgpu_device *adev = (struct amdgpu_device *) kgd;

	if (!FUNC2(adev, vmid)) {
		FUNC3("non kfd vmid\n");
		return 0;
	}

	FUNC1(mmVM_INVALIDATE_REQUEST, 1 << vmid);
	FUNC0(mmVM_INVALIDATE_RESPONSE);
	return 0;
}