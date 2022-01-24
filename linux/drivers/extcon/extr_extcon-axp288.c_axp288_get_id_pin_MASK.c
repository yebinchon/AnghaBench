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
struct axp288_extcon_info {int /*<<< orphan*/  role_sw; scalar_t__ id_extcon; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int USB_ROLE_HOST ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct axp288_extcon_info *info)
{
	enum usb_role role;

	if (info->id_extcon)
		return FUNC0(info->id_extcon, EXTCON_USB_HOST) <= 0;

	/* We cannot access the id-pin, see what mode the AML code has set */
	role = FUNC1(info->role_sw);
	return role != USB_ROLE_HOST;
}