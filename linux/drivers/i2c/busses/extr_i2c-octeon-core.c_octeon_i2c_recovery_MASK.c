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
struct octeon_i2c {int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct octeon_i2c*) ; 

__attribute__((used)) static int FUNC2(struct octeon_i2c *i2c)
{
	int ret;

	ret = FUNC0(&i2c->adap);
	if (ret)
		/* recover failed, try hardware re-init */
		ret = FUNC1(i2c);
	return ret;
}