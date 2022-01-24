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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct i2c_tiny_usb {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_tiny_usb*) ; 
 struct i2c_tiny_usb* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *interface)
{
	struct i2c_tiny_usb *dev = FUNC3(interface);

	FUNC1(&dev->adapter);
	FUNC4(interface, NULL);
	FUNC2(dev);

	FUNC0(&interface->dev, "disconnected\n");
}