#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct i2c_hid_platform_data {TYPE_3__* supplies; int /*<<< orphan*/  hid_descriptor_address; scalar_t__ post_power_delay_ms; } ;
struct TYPE_15__ {int /*<<< orphan*/  wProductID; int /*<<< orphan*/  wVendorID; int /*<<< orphan*/  bcdVersion; } ;
struct i2c_hid {struct i2c_hid_platform_data pdata; int /*<<< orphan*/  quirks; TYPE_2__ hdesc; struct hid_device* hid; int /*<<< orphan*/  reset_lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  wHIDDescRegister; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_17__ {scalar_t__ of_node; struct i2c_hid_platform_data* platform_data; } ;
struct i2c_client {int irq; char* name; TYPE_5__ dev; int /*<<< orphan*/  addr; } ;
struct TYPE_14__ {TYPE_5__* parent; } ;
struct hid_device {void* product; void* vendor; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; void* version; int /*<<< orphan*/  bus; TYPE_1__ dev; int /*<<< orphan*/ * ll_driver; struct i2c_client* driver_data; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_16__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_MIN_BUFFER_SIZE ; 
 scalar_t__ FUNC1 (struct hid_device*) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 struct i2c_hid* FUNC9 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int,struct i2c_hid*) ; 
 int FUNC12 (struct hid_device*) ; 
 struct hid_device* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int FUNC17 (struct i2c_client*,struct i2c_hid_platform_data*) ; 
 int FUNC18 (struct i2c_hid*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct i2c_hid*) ; 
 int /*<<< orphan*/  FUNC20 (struct i2c_hid*) ; 
 int /*<<< orphan*/  FUNC21 (struct i2c_client*,struct i2c_hid_platform_data*) ; 
 int FUNC22 (struct i2c_client*) ; 
 int /*<<< orphan*/  i2c_hid_ll_driver ; 
 int /*<<< orphan*/  FUNC23 (void*,void*) ; 
 int FUNC24 (struct i2c_client*,struct i2c_hid_platform_data*) ; 
 int /*<<< orphan*/  FUNC25 (struct i2c_client*,struct i2c_hid*) ; 
 int FUNC26 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 void* FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC32 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int,char*,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC35(struct i2c_client *client,
			 const struct i2c_device_id *dev_id)
{
	int ret;
	struct i2c_hid *ihid;
	struct hid_device *hid;
	__u16 hidRegister;
	struct i2c_hid_platform_data *platform_data = client->dev.platform_data;

	FUNC4("HID probe called for i2c 0x%02x\n", client->addr);

	if (!client->irq) {
		FUNC6(&client->dev,
			"HID over i2c has not been provided an Int IRQ\n");
		return -EINVAL;
	}

	if (client->irq < 0) {
		if (client->irq != -EPROBE_DEFER)
			FUNC6(&client->dev,
				"HID over i2c doesn't have a valid IRQ\n");
		return client->irq;
	}

	ihid = FUNC9(&client->dev, sizeof(*ihid), GFP_KERNEL);
	if (!ihid)
		return -ENOMEM;

	if (client->dev.of_node) {
		ret = FUNC24(client, &ihid->pdata);
		if (ret)
			return ret;
	} else if (!platform_data) {
		ret = FUNC17(client, &ihid->pdata);
		if (ret)
			return ret;
	} else {
		ihid->pdata = *platform_data;
	}

	/* Parse platform agnostic common properties from ACPI / device tree */
	FUNC21(client, &ihid->pdata);

	ihid->pdata.supplies[0].supply = "vdd";
	ihid->pdata.supplies[1].supply = "vddl";

	ret = FUNC10(&client->dev,
				      FUNC0(ihid->pdata.supplies),
				      ihid->pdata.supplies);
	if (ret)
		return ret;

	ret = FUNC32(FUNC0(ihid->pdata.supplies),
				    ihid->pdata.supplies);
	if (ret < 0)
		return ret;

	if (ihid->pdata.post_power_delay_ms)
		FUNC29(ihid->pdata.post_power_delay_ms);

	FUNC25(client, ihid);

	ihid->client = client;

	hidRegister = ihid->pdata.hid_descriptor_address;
	ihid->wHIDDescRegister = FUNC3(hidRegister);

	FUNC27(&ihid->wait);
	FUNC30(&ihid->reset_lock);

	/* we need to allocate the command buffer without knowing the maximum
	 * size of the reports. Let's use HID_MIN_BUFFER_SIZE, then we do the
	 * real computation later. */
	ret = FUNC18(ihid, HID_MIN_BUFFER_SIZE);
	if (ret < 0)
		goto err_regulator;

	FUNC16(&client->dev);

	FUNC8(&client->dev);

	/* Make sure there is something at this address */
	ret = FUNC26(client);
	if (ret < 0) {
		FUNC5(&client->dev, "nothing at this address: %d\n", ret);
		ret = -ENXIO;
		goto err_regulator;
	}

	ret = FUNC19(ihid);
	if (ret < 0)
		goto err_regulator;

	ret = FUNC22(client);
	if (ret < 0)
		goto err_regulator;

	hid = FUNC13();
	if (FUNC1(hid)) {
		ret = FUNC2(hid);
		goto err_irq;
	}

	ihid->hid = hid;

	hid->driver_data = client;
	hid->ll_driver = &i2c_hid_ll_driver;
	hid->dev.parent = &client->dev;
	hid->bus = BUS_I2C;
	hid->version = FUNC28(ihid->hdesc.bcdVersion);
	hid->vendor = FUNC28(ihid->hdesc.wVendorID);
	hid->product = FUNC28(ihid->hdesc.wProductID);

	FUNC33(hid->name, sizeof(hid->name), "%s %04hX:%04hX",
		 client->name, hid->vendor, hid->product);
	FUNC34(hid->phys, FUNC7(&client->dev), sizeof(hid->phys));

	ihid->quirks = FUNC23(hid->vendor, hid->product);

	ret = FUNC12(hid);
	if (ret) {
		if (ret != -ENODEV)
			FUNC15(client, "can't add hid device: %d\n", ret);
		goto err_mem_free;
	}

	return 0;

err_mem_free:
	FUNC14(hid);

err_irq:
	FUNC11(client->irq, ihid);

err_regulator:
	FUNC31(FUNC0(ihid->pdata.supplies),
			       ihid->pdata.supplies);
	FUNC20(ihid);
	return ret;
}