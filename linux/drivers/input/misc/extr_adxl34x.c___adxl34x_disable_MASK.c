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
struct adxl34x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adxl34x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_CTL ; 

__attribute__((used)) static void FUNC1(struct adxl34x *ac)
{
	/*
	 * A '0' places the ADXL34x into standby mode
	 * with minimum power consumption.
	 */
	FUNC0(ac, POWER_CTL, 0);
}