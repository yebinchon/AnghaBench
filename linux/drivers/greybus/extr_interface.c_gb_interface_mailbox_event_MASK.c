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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct gb_interface {int quirks; int /*<<< orphan*/  mutex; int /*<<< orphan*/  mode_switch_completion; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode_switch; } ;

/* Variables and functions */
 int GB_INTERFACE_QUIRK_LEGACY_MODE_SWITCH ; 
 int /*<<< orphan*/  GB_SVC_INTF_MAILBOX_GREYBUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct gb_interface *intf, u16 result,
				u32 mailbox)
{
	FUNC6(&intf->mutex);

	if (result) {
		FUNC2(&intf->dev,
			 "mailbox event with UniPro error: 0x%04x\n",
			 result);
		goto err_disable;
	}

	if (mailbox != GB_SVC_INTF_MAILBOX_GREYBUS) {
		FUNC2(&intf->dev,
			 "mailbox event with unexpected value: 0x%08x\n",
			 mailbox);
		goto err_disable;
	}

	if (intf->quirks & GB_INTERFACE_QUIRK_LEGACY_MODE_SWITCH) {
		FUNC5(intf);
		goto out_unlock;
	}

	if (!intf->mode_switch) {
		FUNC2(&intf->dev, "unexpected mailbox event: 0x%08x\n",
			 mailbox);
		goto err_disable;
	}

	FUNC1(&intf->dev, "mode switch detected\n");

	FUNC0(&intf->mode_switch_completion);

out_unlock:
	FUNC7(&intf->mutex);

	return;

err_disable:
	FUNC4(intf);
	FUNC3(intf);
	FUNC7(&intf->mutex);
}