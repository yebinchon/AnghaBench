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
struct kobj_uevent_env {int dummy; } ;
struct gb_svc {struct gb_host_device* hd; } ;
struct gb_module {int /*<<< orphan*/  module_id; struct gb_host_device* hd; } ;
struct gb_interface {int /*<<< orphan*/  product_id; int /*<<< orphan*/  vendor_id; int /*<<< orphan*/  interface_id; struct gb_host_device* hd; struct gb_module* module; } ;
struct gb_host_device {int /*<<< orphan*/  bus_id; } ;
struct gb_control {struct gb_interface* intf; } ;
struct gb_bundle {int /*<<< orphan*/  class; int /*<<< orphan*/  id; struct gb_interface* intf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (struct device*) ; 
 scalar_t__ FUNC6 (struct device*) ; 
 scalar_t__ FUNC7 (struct device*) ; 
 struct gb_bundle* FUNC8 (struct device*) ; 
 struct gb_control* FUNC9 (struct device*) ; 
 struct gb_host_device* FUNC10 (struct device*) ; 
 struct gb_interface* FUNC11 (struct device*) ; 
 struct gb_module* FUNC12 (struct device*) ; 
 struct gb_svc* FUNC13 (struct device*) ; 

__attribute__((used)) static int FUNC14(struct device *dev, struct kobj_uevent_env *env)
{
	struct gb_host_device *hd;
	struct gb_module *module = NULL;
	struct gb_interface *intf = NULL;
	struct gb_control *control = NULL;
	struct gb_bundle *bundle = NULL;
	struct gb_svc *svc = NULL;

	if (FUNC4(dev)) {
		hd = FUNC10(dev);
	} else if (FUNC6(dev)) {
		module = FUNC12(dev);
		hd = module->hd;
	} else if (FUNC5(dev)) {
		intf = FUNC11(dev);
		module = intf->module;
		hd = intf->hd;
	} else if (FUNC3(dev)) {
		control = FUNC9(dev);
		intf = control->intf;
		module = intf->module;
		hd = intf->hd;
	} else if (FUNC2(dev)) {
		bundle = FUNC8(dev);
		intf = bundle->intf;
		module = intf->module;
		hd = intf->hd;
	} else if (FUNC7(dev)) {
		svc = FUNC13(dev);
		hd = svc->hd;
	} else {
		FUNC1(dev, "uevent for unknown greybus device \"type\"!\n");
		return -EINVAL;
	}

	if (FUNC0(env, "BUS=%u", hd->bus_id))
		return -ENOMEM;

	if (module) {
		if (FUNC0(env, "MODULE=%u", module->module_id))
			return -ENOMEM;
	}

	if (intf) {
		if (FUNC0(env, "INTERFACE=%u", intf->interface_id))
			return -ENOMEM;
		if (FUNC0(env, "GREYBUS_ID=%08x/%08x",
				   intf->vendor_id, intf->product_id))
			return -ENOMEM;
	}

	if (bundle) {
		// FIXME
		// add a uevent that can "load" a bundle type
		// This is what we need to bind a driver to so use the info
		// in gmod here as well

		if (FUNC0(env, "BUNDLE=%u", bundle->id))
			return -ENOMEM;
		if (FUNC0(env, "BUNDLE_CLASS=%02x", bundle->class))
			return -ENOMEM;
	}

	return 0;
}