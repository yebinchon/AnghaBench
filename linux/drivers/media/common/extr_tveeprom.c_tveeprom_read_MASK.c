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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int FUNC0 (struct i2c_client*,unsigned char*,int) ; 
 int FUNC1 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int,unsigned char*,int,int) ; 

int FUNC5(struct i2c_client *c, unsigned char *eedata, int len)
{
	unsigned char buf;
	int err;

	buf = 0;
	err = FUNC1(c, &buf, 1);
	if (err != 1) {
		FUNC2("Huh, no eeprom present (err=%d)?\n", err);
		return -1;
	}
	err = FUNC0(c, eedata, len);
	if (err != len) {
		FUNC3("i2c eeprom read error (err=%d)\n", err);
		return -1;
	}

	FUNC4("full 256-byte eeprom dump:", DUMP_PREFIX_NONE,
			     16, 1, eedata, len, true);
	return 0;
}