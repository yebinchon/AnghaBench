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
struct gp2a_data {int /*<<< orphan*/  i2c_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  GP2A_ADDR_CYCLE ; 
 int /*<<< orphan*/  GP2A_ADDR_GAIN ; 
 int /*<<< orphan*/  GP2A_ADDR_HYS ; 
 int FUNC0 (struct gp2a_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct gp2a_data *dt)
{
	int error;

	error = FUNC1(dt->i2c_client, GP2A_ADDR_GAIN,
					  0x08);
	if (error < 0)
		return error;

	error = FUNC1(dt->i2c_client, GP2A_ADDR_HYS,
					  0xc2);
	if (error < 0)
		return error;

	error = FUNC1(dt->i2c_client, GP2A_ADDR_CYCLE,
					  0x04);
	if (error < 0)
		return error;

	error = FUNC0(dt);

	return error;
}