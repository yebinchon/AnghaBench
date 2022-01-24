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
struct ib_device {int /*<<< orphan*/  compat_devs_mutex; int /*<<< orphan*/  compat_devs; } ;
struct ib_core_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_core_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ib_core_device* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ib_device *device, u32 id)
{
	struct ib_core_device *cdev;

	FUNC2(&device->compat_devs_mutex);
	cdev = FUNC5(&device->compat_devs, id);
	FUNC3(&device->compat_devs_mutex);
	if (cdev) {
		FUNC1(cdev);
		FUNC0(&cdev->dev);
		FUNC4(&cdev->dev);
	}
}