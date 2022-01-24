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
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct cx24123_state {int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx24123_state*,int,int) ; 
 struct cx24123_state* FUNC1 (struct i2c_adapter*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *i2c_adap,
	struct i2c_msg msg[], int num)
{
	struct cx24123_state *state = FUNC1(i2c_adap);
	/* this repeater closes after the first stop */
	FUNC0(state, 1, 1);
	return FUNC2(state->i2c, msg, num);
}