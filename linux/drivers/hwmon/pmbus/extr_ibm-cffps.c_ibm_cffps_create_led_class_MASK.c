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
struct TYPE_2__ {int /*<<< orphan*/  blink_set; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  name; } ;
struct ibm_cffps {TYPE_1__ led; int /*<<< orphan*/  led_name; struct i2c_client* client; } ;
struct device {int dummy; } ;
struct i2c_client {char* name; int addr; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  ibm_cffps_led_blink_set ; 
 int /*<<< orphan*/  ibm_cffps_led_brightness_set ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct ibm_cffps *psu)
{
	int rc;
	struct i2c_client *client = psu->client;
	struct device *dev = &client->dev;

	FUNC2(psu->led_name, sizeof(psu->led_name), "%s-%02x", client->name,
		 client->addr);
	psu->led.name = psu->led_name;
	psu->led.max_brightness = LED_FULL;
	psu->led.brightness_set = ibm_cffps_led_brightness_set;
	psu->led.blink_set = ibm_cffps_led_blink_set;

	rc = FUNC1(dev, &psu->led);
	if (rc)
		FUNC0(dev, "failed to register led class: %d\n", rc);
}