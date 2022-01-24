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
typedef  int /*<<< orphan*/  u8 ;
struct gb_module {int /*<<< orphan*/  dev; } ;
struct gb_interface {scalar_t__ type; int /*<<< orphan*/  mutex; int /*<<< orphan*/  interface_id; struct gb_module* module; } ;

/* Variables and functions */
 scalar_t__ GB_INTERFACE_TYPE_DUMMY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct gb_interface*) ; 
 int FUNC2 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_interface*) ; 
 int FUNC4 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct gb_interface *intf)
{
	struct gb_module *module = intf->module;
	u8 intf_id = intf->interface_id;
	int ret;

	FUNC5(&intf->mutex);

	ret = FUNC1(intf);
	if (ret) {
		if (intf->type != GB_INTERFACE_TYPE_DUMMY) {
			FUNC0(&module->dev,
				"failed to activate interface %u: %d\n",
				intf_id, ret);
		}

		FUNC2(intf);
		goto err_unlock;
	}

	ret = FUNC2(intf);
	if (ret)
		goto err_interface_deactivate;

	ret = FUNC4(intf);
	if (ret) {
		FUNC0(&module->dev, "failed to enable interface %u: %d\n",
			intf_id, ret);
		goto err_interface_deactivate;
	}

	FUNC6(&intf->mutex);

	return;

err_interface_deactivate:
	FUNC3(intf);
err_unlock:
	FUNC6(&intf->mutex);
}