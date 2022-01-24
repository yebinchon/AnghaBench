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
typedef  int u16 ;
typedef  int t ;
struct i2c_msg {int flags; int len; int* buf; scalar_t__ addr; } ;
struct i2c_adapter {int dummy; } ;
struct dib9000_state {int dummy; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 int FUNC0 (struct dib9000_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib9000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct dib9000_state* FUNC3 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *i2c_adap, struct i2c_msg msg[], int num)
{
	struct dib9000_state *state = FUNC3(i2c_adap);
	u16 i, len, t, index_msg;

	for (index_msg = 0; index_msg < num; index_msg++) {
		if (msg[index_msg].flags & I2C_M_RD) {	/* read */
			len = msg[index_msg].len;
			if (len > 16)
				len = 16;

			if (FUNC0(state, 790) != 0)
				FUNC2("TunerITF: read busy\n");

			FUNC1(state, 784, (u16) (msg[index_msg].addr));
			FUNC1(state, 787, (len / 2) - 1);
			FUNC1(state, 786, 1);	/* start read */

			i = 1000;
			while (FUNC0(state, 790) != (len / 2) && i)
				i--;

			if (i == 0)
				FUNC2("TunerITF: read failed\n");

			for (i = 0; i < len; i += 2) {
				t = FUNC0(state, 785);
				msg[index_msg].buf[i] = (t >> 8) & 0xff;
				msg[index_msg].buf[i + 1] = (t) & 0xff;
			}
			if (FUNC0(state, 790) != 0)
				FUNC2("TunerITF: read more data than expected\n");
		} else {
			i = 1000;
			while (FUNC0(state, 789) && i)
				i--;
			if (i == 0)
				FUNC2("TunerITF: write busy\n");

			len = msg[index_msg].len;
			if (len > 16)
				len = 16;

			for (i = 0; i < len; i += 2)
				FUNC1(state, 785, (msg[index_msg].buf[i] << 8) | msg[index_msg].buf[i + 1]);
			FUNC1(state, 784, (u16) msg[index_msg].addr);
			FUNC1(state, 787, (len / 2) - 1);
			FUNC1(state, 786, 0);	/* start write */

			i = 1000;
			while (FUNC0(state, 791) > 0 && i)
				i--;
			if (i == 0)
				FUNC2("TunerITF: write failed\n");
		}
	}
	return num;
}