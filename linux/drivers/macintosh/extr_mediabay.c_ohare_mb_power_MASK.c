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
 int /*<<< orphan*/  FUNC0 (struct media_bay_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct media_bay_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OHARE_FCR ; 
 int /*<<< orphan*/  OHARE_MBCR ; 
 int OH_BAY_DEV_MASK ; 
 int OH_BAY_POWER_N ; 
 int OH_BAY_RESET_N ; 
 int OH_FLOPPY_ENABLE ; 
 int OH_IDE1_RESET_N ; 

__attribute__((used)) static void
FUNC2(struct media_bay_info* bay, int on_off)
{
	if (on_off) {
		/* Power up device, assert it's reset line */
		FUNC0(bay, OHARE_FCR, OH_BAY_RESET_N);
		FUNC0(bay, OHARE_FCR, OH_BAY_POWER_N);
	} else {
		/* Disable all devices */
		FUNC0(bay, OHARE_FCR, OH_BAY_DEV_MASK);
		FUNC0(bay, OHARE_FCR, OH_FLOPPY_ENABLE);
		/* Cut power from bay, release reset line */
		FUNC1(bay, OHARE_FCR, OH_BAY_POWER_N);
		FUNC1(bay, OHARE_FCR, OH_BAY_RESET_N);
		FUNC1(bay, OHARE_FCR, OH_IDE1_RESET_N);
	}
	FUNC0(bay, OHARE_MBCR, 0x00000F00);
}