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
typedef  int uint32_t ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev, bool state)
{
	uint32_t temp;

	temp = FUNC0(CONFIG_CNTL);
	if (state == false) {
		temp &= ~(1<<0);
		temp |= (1<<1);
	} else {
		temp &= ~(1<<1);
	}
	FUNC1(CONFIG_CNTL, temp);
}