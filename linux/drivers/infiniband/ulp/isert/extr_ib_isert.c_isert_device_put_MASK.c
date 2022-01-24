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
struct isert_device {int /*<<< orphan*/  dev_node; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  device_list_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct isert_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct isert_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isert_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct isert_device *device)
{
	FUNC4(&device_list_mutex);
	device->refcount--;
	FUNC1("device %p refcount %d\n", device, device->refcount);
	if (!device->refcount) {
		FUNC0(device);
		FUNC3(&device->dev_node);
		FUNC2(device);
	}
	FUNC5(&device_list_mutex);
}