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
 int debug ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct drxk_state*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drxk_state *state, u8 adr, u8 *data, int len)
{
	int status;
	struct i2c_msg msg = {
	    .addr = adr, .flags = 0, .buf = data, .len = len };

	FUNC0(3, ":");
	if (debug > 2) {
		int i;
		for (i = 0; i < len; i++)
			FUNC2(" %02x", data[i]);
		FUNC2("\n");
	}
	status = FUNC1(state, &msg, 1);
	if (status >= 0 && status != 1)
		status = -EIO;

	if (status < 0)
		FUNC3("i2c write error at addr 0x%02x\n", adr);

	return status;
}