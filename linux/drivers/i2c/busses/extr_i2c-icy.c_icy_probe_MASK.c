#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct zorro_device_id {int dummy; } ;
struct TYPE_6__ {scalar_t__ start; } ;
struct zorro_dev {int /*<<< orphan*/  dev; TYPE_2__ resource; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; struct i2c_algo_pcf_data* algo_data; int /*<<< orphan*/  owner; TYPE_1__ dev; } ;
struct icy_i2c {TYPE_3__ adapter; int /*<<< orphan*/  ltc2990_client; struct fwnode_handle* ltc2990_fwnode; void* reg_s1; void* reg_s0; } ;
struct i2c_board_info {char* type; int addr; struct fwnode_handle* fwnode; } ;
struct i2c_algo_pcf_data {int /*<<< orphan*/  waitforpin; int /*<<< orphan*/  getclock; int /*<<< orphan*/  getown; int /*<<< orphan*/  getpcf; int /*<<< orphan*/  setpcf; struct icy_i2c* data; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct fwnode_handle*) ; 
 scalar_t__* FUNC1 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct icy_i2c*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct fwnode_handle* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct i2c_board_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  icy_ltc2990_addresses ; 
 int /*<<< orphan*/  icy_ltc2990_props ; 
 int /*<<< orphan*/  icy_pcf_getclock ; 
 int /*<<< orphan*/  icy_pcf_getown ; 
 int /*<<< orphan*/  icy_pcf_getpcf ; 
 int /*<<< orphan*/  icy_pcf_setpcf ; 
 int /*<<< orphan*/  icy_pcf_waitforpin ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC12(struct zorro_dev *z,
		     const struct zorro_device_id *ent)
{
	struct icy_i2c *i2c;
	struct i2c_algo_pcf_data *algo_data;
	struct fwnode_handle *new_fwnode;
	struct i2c_board_info ltc2990_info = {
		.type		= "ltc2990",
		.addr		= 0x4c,
	};

	i2c = FUNC6(&z->dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	algo_data = FUNC6(&z->dev, sizeof(*algo_data), GFP_KERNEL);
	if (!algo_data)
		return -ENOMEM;

	FUNC5(&z->dev, i2c);
	i2c->adapter.dev.parent = &z->dev;
	i2c->adapter.owner = THIS_MODULE;
	/* i2c->adapter.algo assigned by i2c_pcf_add_bus() */
	i2c->adapter.algo_data = algo_data;
	FUNC11(i2c->adapter.name, "ICY I2C Zorro adapter",
		sizeof(i2c->adapter.name));

	if (!FUNC7(&z->dev,
				     z->resource.start,
				     4, i2c->adapter.name))
		return -ENXIO;

	/* Driver private data */
	i2c->reg_s0 = FUNC2(z->resource.start);
	i2c->reg_s1 = FUNC2(z->resource.start + 2);

	algo_data->data = i2c;
	algo_data->setpcf     = icy_pcf_setpcf;
	algo_data->getpcf     = icy_pcf_getpcf;
	algo_data->getown     = icy_pcf_getown;
	algo_data->getclock   = icy_pcf_getclock;
	algo_data->waitforpin = icy_pcf_waitforpin;

	if (FUNC10(&i2c->adapter)) {
		FUNC3(&z->dev, "i2c_pcf_add_bus() failed\n");
		return -ENXIO;
	}

	FUNC4(&z->dev, "ICY I2C controller at %pa, IRQ not implemented\n",
		 &z->resource.start);

	/*
	 * The 2019 a1k.org PCBs have an LTC2990 at 0x4c, so start
	 * it automatically once ltc2990 is modprobed.
	 *
	 * in0 is the voltage of the internal 5V power supply.
	 * temp1 is the temperature inside the chip.
	 *
	 * See property_entry above for in1, in2, temp3.
	 */
	new_fwnode = FUNC8(icy_ltc2990_props, NULL);
	if (FUNC0(new_fwnode)) {
		FUNC4(&z->dev, "Failed to create fwnode for LTC2990, error: %ld\n",
			 FUNC1(new_fwnode));
	} else {
		/*
		 * Store the fwnode so we can destroy it on .remove().
		 * Only store it on success, as fwnode_remove_software_node()
		 * is NULL safe, but not PTR_ERR safe.
		 */
		i2c->ltc2990_fwnode = new_fwnode;
		ltc2990_info.fwnode = new_fwnode;

		i2c->ltc2990_client =
			FUNC9(&i2c->adapter,
					      &ltc2990_info,
					      icy_ltc2990_addresses,
					      NULL);
	}

	return 0;
}