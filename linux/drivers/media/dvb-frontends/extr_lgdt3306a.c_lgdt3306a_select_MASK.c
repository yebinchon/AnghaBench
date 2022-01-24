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
typedef  int /*<<< orphan*/  u32 ;
struct lgdt3306a_state {int /*<<< orphan*/  frontend; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct lgdt3306a_state* FUNC0 (struct i2c_client*) ; 
 struct i2c_client* FUNC1 (struct i2c_mux_core*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_mux_core *muxc, u32 chan)
{
	struct i2c_client *client = FUNC1(muxc);
	struct lgdt3306a_state *state = FUNC0(client);

	return FUNC2(&state->frontend, 1);
}