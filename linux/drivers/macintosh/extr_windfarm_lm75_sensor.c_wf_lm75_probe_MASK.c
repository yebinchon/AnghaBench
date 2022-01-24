#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* name; int /*<<< orphan*/ * ops; } ;
struct wf_lm75_sensor {int ds1775; TYPE_1__ sens; struct i2c_client* i2c; scalar_t__ inited; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct wf_lm75_sensor*) ; 
 int /*<<< orphan*/  FUNC3 (struct wf_lm75_sensor*) ; 
 struct wf_lm75_sensor* FUNC4 (int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  wf_lm75_ops ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			 const struct i2c_device_id *id)
{	
	struct wf_lm75_sensor *lm;
	int rc, ds1775 = id->driver_data;
	const char *name, *loc;

	FUNC0("wf_lm75: creating  %s device at address 0x%02x\n",
	    ds1775 ? "ds1775" : "lm75", client->addr);

	loc = FUNC5(client->dev.of_node, "hwsensor-location", NULL);
	if (!loc) {
		FUNC1(&client->dev, "Missing hwsensor-location property!\n");
		return -ENXIO;
	}

	/* Usual rant about sensor names not beeing very consistent in
	 * the device-tree, oh well ...
	 * Add more entries below as you deal with more setups
	 */
	if (!FUNC6(loc, "Hard drive") || !FUNC6(loc, "DRIVE BAY"))
		name = "hd-temp";
	else if (!FUNC6(loc, "Incoming Air Temp"))
		name = "incoming-air-temp";
	else if (!FUNC6(loc, "ODD Temp"))
		name = "optical-drive-temp";
	else if (!FUNC6(loc, "HD Temp"))
		name = "hard-drive-temp";
	else if (!FUNC6(loc, "PCI SLOTS"))
		name = "slots-temp";
	else if (!FUNC6(loc, "CPU A INLET"))
		name = "cpu-inlet-temp-0";
	else if (!FUNC6(loc, "CPU B INLET"))
		name = "cpu-inlet-temp-1";
	else
		return -ENXIO;
 	

	lm = FUNC4(sizeof(struct wf_lm75_sensor), GFP_KERNEL);
	if (lm == NULL)
		return -ENODEV;

	lm->inited = 0;
	lm->ds1775 = ds1775;
	lm->i2c = client;
	lm->sens.name = name;
	lm->sens.ops = &wf_lm75_ops;
	FUNC2(client, lm);

	rc = FUNC7(&lm->sens);
	if (rc)
		FUNC3(lm);
	return rc;
}