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
typedef  int /*<<< orphan*/  uint16_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMP1_SMN_C2PMSG_90 ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC4(struct pp_hwmgr *hwmgr, uint16_t msg)
{
	struct amdgpu_device *adev = hwmgr->adev;

	FUNC3(hwmgr);

	FUNC0(MP1, 0, mmMP1_SMN_C2PMSG_90, 0);

	FUNC2(hwmgr, msg);

	if (FUNC3(hwmgr) == 0)
		FUNC1("Failed to send Message %x.\n", msg);

	return 0;
}