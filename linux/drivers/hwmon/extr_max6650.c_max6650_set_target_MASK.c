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
struct max6650_data {int speed; int /*<<< orphan*/  client; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FAN_RPM_MAX ; 
 int /*<<< orphan*/  FAN_RPM_MIN ; 
 int /*<<< orphan*/  MAX6650_CFG_MODE_OFF ; 
 int /*<<< orphan*/  MAX6650_REG_SPEED ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int clock ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct max6650_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct max6650_data *data, unsigned long rpm)
{
	int kscale, ktach;

	if (rpm == 0)
		return FUNC3(data, MAX6650_CFG_MODE_OFF);

	rpm = FUNC1(rpm, FAN_RPM_MIN, FAN_RPM_MAX);

	/*
	 * Divide the required speed by 60 to get from rpm to rps, then
	 * use the datasheet equation:
	 *
	 *     KTACH = [(fCLK x KSCALE) / (256 x FanSpeed)] - 1
	 */

	kscale = FUNC0(data->config);
	ktach = ((clock * kscale) / (256 * rpm / 60)) - 1;
	if (ktach < 0)
		ktach = 0;
	if (ktach > 255)
		ktach = 255;
	data->speed = ktach;

	return FUNC2(data->client, MAX6650_REG_SPEED,
					 data->speed);
}