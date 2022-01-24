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
typedef  int word ;
typedef  int u16 ;
struct i2c_msg {int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dib7000p_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dib7000p_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib7000p_state*,int,int) ; 
 struct dib7000p_state* FUNC2 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *i2c_adap,
		struct i2c_msg msg[], int num, u16 apb_address)
{
	struct dib7000p_state *state = FUNC2(i2c_adap);
	u16 word;

	if (num == 1) {		/* write */
		FUNC1(state, apb_address, ((msg[0].buf[1] << 8) | (msg[0].buf[2])));
	} else {
		word = FUNC0(state, apb_address);
		msg[1].buf[0] = (word >> 8) & 0xff;
		msg[1].buf[1] = (word) & 0xff;
	}

	return num;
}