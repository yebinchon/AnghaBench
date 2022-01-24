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
struct octeon_i2c {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWSI_CTL_ENAB ; 
 int FUNC0 (struct octeon_i2c*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_i2c*,int const) ; 
 int FUNC3 (struct octeon_i2c*) ; 

__attribute__((used)) static int FUNC4(struct octeon_i2c *i2c, int target,
			    const u8 *data, int length)
{
	int i, result;

	FUNC2(i2c, target << 1);
	FUNC1(i2c, TWSI_CTL_ENAB);

	result = FUNC3(i2c);
	if (result)
		return result;

	for (i = 0; i < length; i++) {
		result = FUNC0(i2c, false);
		if (result)
			return result;

		FUNC2(i2c, data[i]);
		FUNC1(i2c, TWSI_CTL_ENAB);

		result = FUNC3(i2c);
		if (result)
			return result;
	}

	return 0;
}