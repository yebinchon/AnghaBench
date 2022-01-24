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
struct amdgpu_device {int usec_timeout; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmRLC_SERDES_MASTER_BUSY_0 ; 
 int /*<<< orphan*/  mmRLC_SERDES_MASTER_BUSY_1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	int i;

	for (i = 0; i < adev->usec_timeout; i++) {
		if (FUNC0(mmRLC_SERDES_MASTER_BUSY_0) == 0)
			break;
		FUNC1(1);
	}

	for (i = 0; i < adev->usec_timeout; i++) {
		if (FUNC0(mmRLC_SERDES_MASTER_BUSY_1) == 0)
			break;
		FUNC1(1);
	}
}