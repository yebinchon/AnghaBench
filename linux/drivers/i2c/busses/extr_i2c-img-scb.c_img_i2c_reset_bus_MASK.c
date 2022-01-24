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
struct img_i2c {int /*<<< orphan*/  msg_complete; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IMG_I2C_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct img_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct img_i2c *i2c)
{
	unsigned long flags;
	unsigned long time_left;

	FUNC2(&i2c->lock, flags);
	FUNC1(&i2c->msg_complete);
	FUNC0(i2c);
	FUNC3(&i2c->lock, flags);

	time_left = FUNC4(&i2c->msg_complete,
					      IMG_I2C_TIMEOUT);
	if (time_left == 0)
		return -ETIMEDOUT;
	return 0;
}