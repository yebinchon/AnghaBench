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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct drxk_state {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct drxk_state*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drxk_state *state,
		    u8 adr, u8 *msg, int len, u8 *answ, int alen)
{
	int status;
	struct i2c_msg msgs[2] = {
		{.addr = adr, .flags = 0,
				    .buf = msg, .len = len},
		{.addr = adr, .flags = I2C_M_RD,
		 .buf = answ, .len = alen}
	};

	status = FUNC1(state, msgs, 2);
	if (status != 2) {
		if (debug > 2)
			FUNC2(": ERROR!\n");
		if (status >= 0)
			status = -EIO;

		FUNC3("i2c read error at addr 0x%02x\n", adr);
		return status;
	}
	if (debug > 2) {
		int i;
		FUNC0(2, ": read from");
		for (i = 0; i < len; i++)
			FUNC2(" %02x", msg[i]);
		FUNC2(", value = ");
		for (i = 0; i < alen; i++)
			FUNC2(" %02x", answ[i]);
		FUNC2("\n");
	}
	return 0;
}