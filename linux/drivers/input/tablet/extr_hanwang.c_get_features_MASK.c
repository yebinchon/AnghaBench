#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  idProduct; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct hanwang {TYPE_2__* features; } ;
struct TYPE_5__ {scalar_t__ pid; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 TYPE_2__* features_array ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct usb_device *dev, struct hanwang *hanwang)
{
	int i;

	for (i = 0; i < FUNC0(features_array); i++) {
		if (FUNC1(dev->descriptor.idProduct) ==
				features_array[i].pid) {
			hanwang->features = &features_array[i];
			return true;
		}
	}

	return false;
}