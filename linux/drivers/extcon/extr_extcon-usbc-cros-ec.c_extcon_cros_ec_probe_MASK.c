#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct device {struct device_node* of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {int id; struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;
struct cros_ec_extcon_info {int port_id; int pr; TYPE_1__ notifier; struct cros_ec_device* ec; int /*<<< orphan*/  dr; int /*<<< orphan*/  edev; struct device* dev; } ;
struct cros_ec_device {int /*<<< orphan*/  event_notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  DR_NONE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXTCON_DISP_DP ; 
 int /*<<< orphan*/  EXTCON_PROP_DISP_HPD ; 
 int /*<<< orphan*/  EXTCON_PROP_USB_SS ; 
 int /*<<< orphan*/  EXTCON_PROP_USB_TYPEC_POLARITY ; 
 int /*<<< orphan*/  EXTCON_PROP_USB_VBUS ; 
 int /*<<< orphan*/  EXTCON_USB ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (struct cros_ec_extcon_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct cros_ec_device* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 struct cros_ec_extcon_info* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct cros_ec_extcon_info*,int) ; 
 int /*<<< orphan*/  extcon_cros_ec_event ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct cros_ec_extcon_info*) ; 
 int /*<<< orphan*/  usb_type_c_cable ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct cros_ec_extcon_info *info;
	struct cros_ec_device *ec = FUNC5(pdev->dev.parent);
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	int numports, ret;

	info = FUNC8(dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->dev = dev;
	info->ec = ec;

	if (np) {
		u32 port;

		ret = FUNC11(np, "google,usb-port-id", &port);
		if (ret < 0) {
			FUNC4(dev, "Missing google,usb-port-id property\n");
			return ret;
		}
		info->port_id = port;
	} else {
		info->port_id = pdev->id;
	}

	numports = FUNC3(info);
	if (numports < 0) {
		FUNC4(dev, "failed getting number of ports! ret = %d\n",
			numports);
		return numports;
	}

	if (info->port_id >= numports) {
		FUNC4(dev, "This system only supports %d ports\n", numports);
		return -ENODEV;
	}

	info->edev = FUNC6(dev, usb_type_c_cable);
	if (FUNC0(info->edev)) {
		FUNC4(dev, "failed to allocate extcon device\n");
		return -ENOMEM;
	}

	ret = FUNC7(dev, info->edev);
	if (ret < 0) {
		FUNC4(dev, "failed to register extcon device\n");
		return ret;
	}

	FUNC10(info->edev, EXTCON_USB,
				       EXTCON_PROP_USB_VBUS);
	FUNC10(info->edev, EXTCON_USB_HOST,
				       EXTCON_PROP_USB_VBUS);
	FUNC10(info->edev, EXTCON_USB,
				       EXTCON_PROP_USB_TYPEC_POLARITY);
	FUNC10(info->edev, EXTCON_USB_HOST,
				       EXTCON_PROP_USB_TYPEC_POLARITY);
	FUNC10(info->edev, EXTCON_DISP_DP,
				       EXTCON_PROP_USB_TYPEC_POLARITY);
	FUNC10(info->edev, EXTCON_USB,
				       EXTCON_PROP_USB_SS);
	FUNC10(info->edev, EXTCON_USB_HOST,
				       EXTCON_PROP_USB_SS);
	FUNC10(info->edev, EXTCON_DISP_DP,
				       EXTCON_PROP_USB_SS);
	FUNC10(info->edev, EXTCON_DISP_DP,
				       EXTCON_PROP_DISP_HPD);

	info->dr = DR_NONE;
	info->pr = false;

	FUNC12(pdev, info);

	/* Get PD events from the EC */
	info->notifier.notifier_call = extcon_cros_ec_event;
	ret = FUNC1(&info->ec->event_notifier,
					       &info->notifier);
	if (ret < 0) {
		FUNC4(dev, "failed to register notifier\n");
		return ret;
	}

	/* Perform initial detection */
	ret = FUNC9(info, true);
	if (ret < 0) {
		FUNC4(dev, "failed to detect initial cable state\n");
		goto unregister_notifier;
	}

	return 0;

unregister_notifier:
	FUNC2(&info->ec->event_notifier,
					   &info->notifier);
	return ret;
}