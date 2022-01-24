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
typedef  int u8 ;
struct ocores_i2c {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long const jiffies ; 
 int FUNC0 (struct ocores_i2c*,int) ; 
 scalar_t__ FUNC1 (unsigned long const,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct ocores_i2c *i2c,
		       int reg, u8 mask, u8 val,
		       const unsigned long timeout)
{
	unsigned long j;

	j = jiffies + timeout;
	while (1) {
		u8 status = FUNC0(i2c, reg);

		if ((status & mask) == val)
			break;

		if (FUNC1(jiffies, j))
			return -ETIMEDOUT;
	}
	return 0;
}