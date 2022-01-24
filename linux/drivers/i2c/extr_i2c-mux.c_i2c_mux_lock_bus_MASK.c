#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i2c_mux_priv {TYPE_1__* muxc; } ;
struct i2c_adapter {int /*<<< orphan*/  mux_lock; struct i2c_mux_priv* algo_data; } ;
struct TYPE_2__ {struct i2c_adapter* parent; } ;

/* Variables and functions */
 unsigned int I2C_LOCK_ROOT_ADAPTER ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct i2c_adapter *adapter, unsigned int flags)
{
	struct i2c_mux_priv *priv = adapter->algo_data;
	struct i2c_adapter *parent = priv->muxc->parent;

	FUNC2(&parent->mux_lock, FUNC0(adapter));
	if (!(flags & I2C_LOCK_ROOT_ADAPTER))
		return;
	FUNC1(parent, flags);
}