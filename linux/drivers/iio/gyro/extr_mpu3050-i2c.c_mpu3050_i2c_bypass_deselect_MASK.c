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
typedef  int /*<<< orphan*/  u32 ;
struct mpu3050 {int /*<<< orphan*/  dev; } ;
struct i2c_mux_core {int dummy; } ;

/* Variables and functions */
 struct mpu3050* FUNC0 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_mux_core *mux, u32 chan_id)
{
	struct mpu3050 *mpu3050 = FUNC0(mux);

	FUNC1(mpu3050->dev);
	FUNC2(mpu3050->dev);
	return 0;
}