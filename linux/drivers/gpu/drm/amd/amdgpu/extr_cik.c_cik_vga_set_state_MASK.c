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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CNTL__VGA_DIS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCONFIG_CNTL ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev, bool state)
{
	uint32_t tmp;

	tmp = FUNC0(mmCONFIG_CNTL);
	if (!state)
		tmp |= CONFIG_CNTL__VGA_DIS_MASK;
	else
		tmp &= ~CONFIG_CNTL__VGA_DIS_MASK;
	FUNC1(mmCONFIG_CNTL, tmp);
}