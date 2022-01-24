#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symlink_name ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_8__ {TYPE_3__ dev; } ;
struct i2c_mux_priv {int chan_id; TYPE_4__ adap; } ;
struct i2c_mux_core {int num_adapters; TYPE_2__* dev; struct i2c_adapter** adapter; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct i2c_adapter {TYPE_1__ dev; struct i2c_mux_priv* algo_data; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_mux_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

void FUNC5(struct i2c_mux_core *muxc)
{
	char symlink_name[20];

	while (muxc->num_adapters) {
		struct i2c_adapter *adap = muxc->adapter[--muxc->num_adapters];
		struct i2c_mux_priv *priv = adap->algo_data;
		struct device_node *np = adap->dev.of_node;

		muxc->adapter[muxc->num_adapters] = NULL;

		FUNC3(symlink_name, sizeof(symlink_name),
			 "channel-%u", priv->chan_id);
		FUNC4(&muxc->dev->kobj, symlink_name);

		FUNC4(&priv->adap.dev.kobj, "mux_device");
		FUNC0(adap);
		FUNC2(np);
		FUNC1(priv);
	}
}