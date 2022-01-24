#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; struct osif_priv* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct osif_priv {TYPE_3__* usb_dev; TYPE_5__ adapter; struct usb_interface* interface; } ;
struct TYPE_7__ {int /*<<< orphan*/  bcdDevice; } ;
struct TYPE_9__ {int devnum; TYPE_2__* bus; TYPE_1__ descriptor; } ;
struct TYPE_8__ {int busnum; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  OSIFI2C_SET_BIT_RATE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 struct osif_priv* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  osif_algorithm ; 
 int FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,struct osif_priv*) ; 

__attribute__((used)) static int FUNC11(struct usb_interface *interface,
			     const struct usb_device_id *id)
{
	int ret;
	struct osif_priv *priv;
	u16 version;

	priv = FUNC2(&interface->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->usb_dev = FUNC8(FUNC4(interface));
	priv->interface = interface;

	FUNC10(interface, priv);

	priv->adapter.owner = THIS_MODULE;
	priv->adapter.class = I2C_CLASS_HWMON;
	priv->adapter.algo = &osif_algorithm;
	priv->adapter.algo_data = priv;
	FUNC7(priv->adapter.name, sizeof(priv->adapter.name),
		 "OSIF at bus %03d device %03d",
		 priv->usb_dev->bus->busnum, priv->usb_dev->devnum);

	/*
	 * Set bus frequency. The frequency is:
	 * 120,000,000 / ( 16 + 2 * div * 4^prescale).
	 * Using dev = 52, prescale = 0 give 100KHz */
	ret = FUNC6(&priv->adapter, OSIFI2C_SET_BIT_RATE, 52, 0,
			    NULL, 0);
	if (ret) {
		FUNC0(&interface->dev, "failure sending bit rate");
		FUNC9(priv->usb_dev);
		return ret;
	}

	FUNC3(&(priv->adapter));

	version = FUNC5(priv->usb_dev->descriptor.bcdDevice);
	FUNC1(&interface->dev,
		 "version %x.%02x found at bus %03d address %03d",
		 version >> 8, version & 0xff,
		 priv->usb_dev->bus->busnum, priv->usb_dev->devnum);

	return 0;
}