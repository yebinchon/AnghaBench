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
struct mpu3050 {int /*<<< orphan*/  dev; int /*<<< orphan*/  map; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPU3050_PWR_MGM ; 
 int /*<<< orphan*/  MPU3050_PWR_MGM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct mpu3050 *mpu3050)
{
	int ret;

	ret = FUNC4(FUNC0(mpu3050->regs), mpu3050->regs);
	if (ret) {
		FUNC1(mpu3050->dev, "cannot enable regulators\n");
		return ret;
	}
	/*
	 * 20-100 ms start-up time for register read/write according to
	 * the datasheet, be on the safe side and wait 200 ms.
	 */
	FUNC2(200);

	/* Take device out of sleep mode */
	ret = FUNC3(mpu3050->map, MPU3050_PWR_MGM,
				 MPU3050_PWR_MGM_SLEEP, 0);
	if (ret) {
		FUNC1(mpu3050->dev, "error setting power mode\n");
		return ret;
	}
	FUNC5(10000, 20000);

	return 0;
}