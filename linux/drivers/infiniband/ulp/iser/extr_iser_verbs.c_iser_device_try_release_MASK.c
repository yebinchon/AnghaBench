#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iser_device {int /*<<< orphan*/  ig_list; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  device_list_mutex; } ;

/* Variables and functions */
 TYPE_1__ ig ; 
 int /*<<< orphan*/  FUNC0 (struct iser_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct iser_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iser_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct iser_device *device)
{
	FUNC4(&ig.device_list_mutex);
	device->refcount--;
	FUNC1("device %p refcount %d\n", device, device->refcount);
	if (!device->refcount) {
		FUNC0(device);
		FUNC3(&device->ig_list);
		FUNC2(device);
	}
	FUNC5(&ig.device_list_mutex);
}