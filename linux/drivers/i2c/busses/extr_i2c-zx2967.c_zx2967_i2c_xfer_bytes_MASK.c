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
typedef  scalar_t__ u32 ;
struct zx2967_i2c {int msg_rd; int error; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  I2C_TIMEOUT ; 
 int /*<<< orphan*/  REG_RDCONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct zx2967_i2c*,scalar_t__) ; 
 int FUNC3 (struct zx2967_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct zx2967_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct zx2967_i2c*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct zx2967_i2c *i2c, u32 bytes)
{
	unsigned long time_left;
	int rd = i2c->msg_rd;
	int ret;

	FUNC0(&i2c->complete);

	if (rd) {
		FUNC5(i2c, bytes - 1, REG_RDCONF);
	} else {
		ret = FUNC3(i2c);
		if (ret)
			return ret;
	}

	FUNC4(i2c);

	time_left = FUNC1(&i2c->complete,
						I2C_TIMEOUT);
	if (time_left == 0)
		return -ETIMEDOUT;

	if (i2c->error)
		return i2c->error;

	return rd ? FUNC2(i2c, bytes) : 0;
}