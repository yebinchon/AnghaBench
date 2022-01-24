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
struct usb_interface {int dummy; } ;
struct pxrc {int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  urb; scalar_t__ is_open; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pxrc* FUNC2 (struct usb_interface*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf)
{
	struct pxrc *pxrc = FUNC2(intf);
	int retval = 0;

	FUNC0(&pxrc->pm_mutex);
	if (pxrc->is_open && FUNC3(pxrc->urb, GFP_KERNEL) < 0)
		retval = -EIO;

	FUNC1(&pxrc->pm_mutex);
	return retval;
}