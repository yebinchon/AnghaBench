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
struct inv_mpu6050_state {int /*<<< orphan*/  map; int /*<<< orphan*/  vddio_supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct inv_mpu6050_state *st)
{
	int result;

	result = FUNC2(st->vddio_supply);
	if (result) {
		FUNC0(FUNC1(st->map),
			"Failed to enable regulator: %d\n", result);
	} else {
		/* Give the device a little bit of time to start up. */
		FUNC3(35000, 70000);
	}

	return result;
}