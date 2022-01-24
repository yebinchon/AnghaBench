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
struct media_bay_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HEATHROW_FCR ; 
 int /*<<< orphan*/  HEATHROW_MBCR ; 
 int HRW_BAY_DEV_MASK ; 
 int HRW_BAY_POWER_N ; 
 int HRW_BAY_RESET_N ; 
 int HRW_IDE1_RESET_N ; 
 int HRW_SWIM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct media_bay_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct media_bay_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct media_bay_info* bay, int on_off)
{
	if (on_off) {
		/* Power up device, assert it's reset line */
		FUNC0(bay, HEATHROW_FCR, HRW_BAY_RESET_N);
		FUNC0(bay, HEATHROW_FCR, HRW_BAY_POWER_N);
	} else {
		/* Disable all devices */
		FUNC0(bay, HEATHROW_FCR, HRW_BAY_DEV_MASK);
		FUNC0(bay, HEATHROW_FCR, HRW_SWIM_ENABLE);
		/* Cut power from bay, release reset line */
		FUNC1(bay, HEATHROW_FCR, HRW_BAY_POWER_N);
		FUNC1(bay, HEATHROW_FCR, HRW_BAY_RESET_N);
		FUNC1(bay, HEATHROW_FCR, HRW_IDE1_RESET_N);
	}
	FUNC0(bay, HEATHROW_MBCR, 0x00000F00);
}