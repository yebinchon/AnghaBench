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
typedef  scalar_t__ u8 ;
struct octeon_i2c {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ STAT_REP_START ; 
 scalar_t__ STAT_START ; 
 int TWSI_CTL_ENAB ; 
 int TWSI_CTL_STA ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_i2c*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_i2c*) ; 
 int FUNC2 (struct octeon_i2c*) ; 
 scalar_t__ FUNC3 (struct octeon_i2c*) ; 
 int FUNC4 (struct octeon_i2c*) ; 

__attribute__((used)) static int FUNC5(struct octeon_i2c *i2c)
{
	int ret;
	u8 stat;

	FUNC1(i2c);

	FUNC0(i2c, TWSI_CTL_ENAB | TWSI_CTL_STA);
	ret = FUNC4(i2c);
	if (ret)
		goto error;

	stat = FUNC3(i2c);
	if (stat == STAT_START || stat == STAT_REP_START)
		/* START successful, bail out */
		return 0;

error:
	/* START failed, try to recover */
	ret = FUNC2(i2c);
	return (ret) ? ret : -EAGAIN;
}