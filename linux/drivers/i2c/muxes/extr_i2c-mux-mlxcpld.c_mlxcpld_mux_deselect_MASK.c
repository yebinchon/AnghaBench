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
struct mlxcpld_mux {scalar_t__ last_chan; struct i2c_client* client; } ;
struct i2c_mux_core {int /*<<< orphan*/  parent; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct mlxcpld_mux* FUNC0 (struct i2c_mux_core*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_client*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct i2c_mux_core *muxc, u32 chan)
{
	struct mlxcpld_mux *data = FUNC0(muxc);
	struct i2c_client *client = data->client;

	/* Deselect active channel */
	data->last_chan = 0;

	return FUNC1(muxc->parent, client, data->last_chan);
}