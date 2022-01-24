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
struct led_netdev_data {int /*<<< orphan*/  mode; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  enum netdev_led_attr { ____Placeholder_netdev_led_attr } netdev_led_attr ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
#define  NETDEV_ATTR_LINK 130 
#define  NETDEV_ATTR_RX 129 
#define  NETDEV_ATTR_TX 128 
 int NETDEV_LED_LINK ; 
 int NETDEV_LED_RX ; 
 int NETDEV_LED_TX ; 
 struct led_netdev_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, char *buf,
	enum netdev_led_attr attr)
{
	struct led_netdev_data *trigger_data = FUNC0(dev);
	int bit;

	switch (attr) {
	case NETDEV_ATTR_LINK:
		bit = NETDEV_LED_LINK;
		break;
	case NETDEV_ATTR_TX:
		bit = NETDEV_LED_TX;
		break;
	case NETDEV_ATTR_RX:
		bit = NETDEV_LED_RX;
		break;
	default:
		return -EINVAL;
	}

	return FUNC1(buf, "%u\n", FUNC2(bit, &trigger_data->mode));
}