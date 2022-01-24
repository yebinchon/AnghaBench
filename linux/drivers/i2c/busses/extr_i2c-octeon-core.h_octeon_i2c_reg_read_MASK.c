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
typedef  int u64 ;
struct octeon_i2c {scalar_t__ twsi_base; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct octeon_i2c*) ; 
 int SW_TWSI_R ; 
 int SW_TWSI_V ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static inline int FUNC3(struct octeon_i2c *i2c, u64 eop_reg,
				      int *error)
{
	int tries = 1000;
	u64 tmp;

	FUNC2(SW_TWSI_V | eop_reg | SW_TWSI_R, i2c->twsi_base + FUNC0(i2c));
	do {
		tmp = FUNC1(i2c->twsi_base + FUNC0(i2c));
		if (--tries < 0) {
			/* signal that the returned data is invalid */
			if (error)
				*error = -EIO;
			return 0;
		}
	} while ((tmp & SW_TWSI_V) != 0);

	return tmp & 0xFF;
}