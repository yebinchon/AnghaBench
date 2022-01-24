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
struct input_handle {int dummy; } ;

/* Variables and functions */
 unsigned int BTN_MIDDLE ; 
 unsigned int BTN_RIGHT ; 
 unsigned int EV_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mac_hid_emumouse_dev ; 
 unsigned int mouse_button2_keycode ; 
 unsigned int mouse_button3_keycode ; 

__attribute__((used)) static bool FUNC2(struct input_handle *handle,
				    unsigned int type, unsigned int code,
				    int value)
{
	unsigned int btn;

	if (type != EV_KEY)
		return false;

	if (code == mouse_button2_keycode)
		btn = BTN_MIDDLE;
	else if (code == mouse_button3_keycode)
		btn = BTN_RIGHT;
	else
		return false;

	FUNC0(mac_hid_emumouse_dev, btn, value);
	FUNC1(mac_hid_emumouse_dev);

	return true;
}