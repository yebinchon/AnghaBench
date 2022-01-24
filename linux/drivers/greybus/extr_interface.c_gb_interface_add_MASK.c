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
struct gb_interface {int type; int /*<<< orphan*/  ddbl1_product_id; int /*<<< orphan*/  ddbl1_manufacturer_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  product_id; int /*<<< orphan*/  vendor_id; } ;

/* Variables and functions */
#define  GB_INTERFACE_TYPE_GREYBUS 129 
#define  GB_INTERFACE_TYPE_UNIPRO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_interface*) ; 

int FUNC5(struct gb_interface *intf)
{
	int ret;

	ret = FUNC2(&intf->dev);
	if (ret) {
		FUNC0(&intf->dev, "failed to register interface: %d\n", ret);
		return ret;
	}

	FUNC4(intf);

	FUNC1(&intf->dev, "Interface added (%s)\n",
		 FUNC3(intf));

	switch (intf->type) {
	case GB_INTERFACE_TYPE_GREYBUS:
		FUNC1(&intf->dev, "GMP VID=0x%08x, PID=0x%08x\n",
			 intf->vendor_id, intf->product_id);
		/* fall-through */
	case GB_INTERFACE_TYPE_UNIPRO:
		FUNC1(&intf->dev, "DDBL1 Manufacturer=0x%08x, Product=0x%08x\n",
			 intf->ddbl1_manufacturer_id,
			 intf->ddbl1_product_id);
		break;
	default:
		break;
	}

	return 0;
}