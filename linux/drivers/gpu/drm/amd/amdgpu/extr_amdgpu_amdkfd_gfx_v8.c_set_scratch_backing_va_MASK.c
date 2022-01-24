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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kgd_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSH_HIDDEN_PRIVATE_BASE_VMID ; 
 int /*<<< orphan*/  FUNC2 (struct kgd_dev*) ; 

__attribute__((used)) static void FUNC3(struct kgd_dev *kgd,
					uint64_t va, uint32_t vmid)
{
	struct amdgpu_device *adev = (struct amdgpu_device *) kgd;

	FUNC1(kgd, 0, 0, 0, vmid);
	FUNC0(mmSH_HIDDEN_PRIVATE_BASE_VMID, va);
	FUNC2(kgd);
}