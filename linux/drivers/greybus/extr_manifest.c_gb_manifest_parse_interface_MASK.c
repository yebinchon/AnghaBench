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
struct manifest_desc {struct greybus_descriptor_interface* data; } ;
struct greybus_descriptor_interface {int /*<<< orphan*/  features; int /*<<< orphan*/  product_stringid; int /*<<< orphan*/  vendor_stringid; } ;
struct gb_interface {int /*<<< orphan*/  dev; int /*<<< orphan*/  features; struct gb_control* control; } ;
struct gb_control {char* vendor_string; char* product_string; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_interface*) ; 
 char* FUNC3 (struct gb_interface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct manifest_desc*) ; 

__attribute__((used)) static bool FUNC6(struct gb_interface *intf,
					struct manifest_desc *interface_desc)
{
	struct greybus_descriptor_interface *desc_intf = interface_desc->data;
	struct gb_control *control = intf->control;
	char *str;

	/* Handle the strings first--they can fail */
	str = FUNC3(intf, desc_intf->vendor_stringid);
	if (FUNC0(str))
		return false;
	control->vendor_string = str;

	str = FUNC3(intf, desc_intf->product_stringid);
	if (FUNC0(str))
		goto out_free_vendor_string;
	control->product_string = str;

	/* Assign feature flags communicated via manifest */
	intf->features = desc_intf->features;

	/* Release the interface descriptor, now that we're done with it */
	FUNC5(interface_desc);

	/* An interface must have at least one bundle descriptor */
	if (!FUNC2(intf)) {
		FUNC1(&intf->dev, "manifest bundle descriptors not valid\n");
		goto out_err;
	}

	return true;
out_err:
	FUNC4(control->product_string);
	control->product_string = NULL;
out_free_vendor_string:
	FUNC4(control->vendor_string);
	control->vendor_string = NULL;

	return false;
}