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
struct gb_interface {int active; scalar_t__ removed; scalar_t__ ejected; } ;
typedef  enum gb_interface_type { ____Placeholder_gb_interface_type } gb_interface_type ;

/* Variables and functions */
 int ENODEV ; 
#define  GB_INTERFACE_TYPE_GREYBUS 129 
#define  GB_INTERFACE_TYPE_UNIPRO 128 
 int GB_INTERFACE_TYPE_UNKNOWN ; 
 int FUNC0 (struct gb_interface*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_interface*) ; 
 int FUNC2 (struct gb_interface*) ; 
 int FUNC3 (struct gb_interface*,int) ; 
 int FUNC4 (struct gb_interface*) ; 
 int FUNC5 (struct gb_interface*,int) ; 
 int FUNC6 (struct gb_interface*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_interface*) ; 

__attribute__((used)) static int FUNC8(struct gb_interface *intf,
				  enum gb_interface_type *type)
{
	int ret;

	*type = GB_INTERFACE_TYPE_UNKNOWN;

	if (intf->ejected || intf->removed)
		return -ENODEV;

	ret = FUNC6(intf, true);
	if (ret)
		return ret;

	ret = FUNC3(intf, true);
	if (ret)
		goto err_vsys_disable;

	ret = FUNC5(intf, true);
	if (ret)
		goto err_refclk_disable;

	ret = FUNC0(intf, type);
	if (ret) {
		switch (*type) {
		case GB_INTERFACE_TYPE_UNIPRO:
		case GB_INTERFACE_TYPE_GREYBUS:
			goto err_hibernate_link;
		default:
			goto err_unipro_disable;
		}
	}

	ret = FUNC2(intf);
	if (ret)
		goto err_hibernate_link;

	ret = FUNC4(intf);
	if (ret)
		goto err_hibernate_link;

	intf->active = true;

	FUNC7(intf);

	return 0;

err_hibernate_link:
	FUNC1(intf);
err_unipro_disable:
	FUNC5(intf, false);
err_refclk_disable:
	FUNC3(intf, false);
err_vsys_disable:
	FUNC6(intf, false);

	return ret;
}