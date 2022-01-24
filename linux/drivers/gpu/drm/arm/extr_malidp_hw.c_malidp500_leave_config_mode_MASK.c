#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct malidp_hw_device {TYPE_2__* hw; } ;
struct TYPE_3__ {scalar_t__ dc_base; } ;
struct TYPE_4__ {TYPE_1__ map; } ;

/* Variables and functions */
 int /*<<< orphan*/  MALIDP500_CONFIG_VALID ; 
 scalar_t__ MALIDP500_DC_CONFIG_REQ ; 
 int /*<<< orphan*/  MALIDP500_DC_CONTROL ; 
 scalar_t__ MALIDP_CFG_VALID ; 
 scalar_t__ MALIDP_REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct malidp_hw_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct malidp_hw_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct malidp_hw_device *hwdev)
{
	u32 status, count = 100;

	FUNC1(hwdev, MALIDP_CFG_VALID, MALIDP500_CONFIG_VALID);
	FUNC1(hwdev, MALIDP500_DC_CONFIG_REQ, MALIDP500_DC_CONTROL);
	while (count) {
		status = FUNC2(hwdev, hwdev->hw->map.dc_base + MALIDP_REG_STATUS);
		if ((status & MALIDP500_DC_CONFIG_REQ) == 0)
			break;
		FUNC3(100, 1000);
		count--;
	}
	FUNC0(count == 0, "timeout while leaving config mode");
}