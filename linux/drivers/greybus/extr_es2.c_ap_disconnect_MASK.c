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
struct es2_ap_dev {int /*<<< orphan*/  cport_in; int /*<<< orphan*/  hd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct es2_ap_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct es2_ap_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct es2_ap_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct es2_ap_dev* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *interface)
{
	struct es2_ap_dev *es2 = FUNC4(interface);

	FUNC3(es2->hd);

	FUNC1(es2, &es2->cport_in);
	FUNC0(es2);

	FUNC2(es2);
}