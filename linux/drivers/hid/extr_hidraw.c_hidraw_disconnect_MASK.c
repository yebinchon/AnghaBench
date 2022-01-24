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
struct hidraw {int dummy; } ;
struct hid_device {struct hidraw* hidraw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hidraw*,int) ; 
 int /*<<< orphan*/  minors_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct hid_device *hid)
{
	struct hidraw *hidraw = hid->hidraw;

	FUNC1(&minors_lock);

	FUNC0(hidraw, 1);

	FUNC2(&minors_lock);
}