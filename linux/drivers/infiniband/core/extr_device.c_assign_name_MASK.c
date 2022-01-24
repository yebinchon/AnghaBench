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
struct ib_device {int /*<<< orphan*/  index; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENFILE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_DEVICE_NAME_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ib_device*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  devices ; 
 int /*<<< orphan*/  devices_rwsem ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xa_limit_31b ; 

__attribute__((used)) static int FUNC9(struct ib_device *device, const char *name)
{
	static u32 last_id;
	int ret;

	FUNC4(&devices_rwsem);
	/* Assign a unique name to the device */
	if (FUNC5(name, '%'))
		ret = FUNC1(device, name);
	else
		ret = FUNC3(&device->dev, name);
	if (ret)
		goto out;

	if (FUNC0(FUNC2(&device->dev))) {
		ret = -ENFILE;
		goto out;
	}
	FUNC6(device->name, FUNC2(&device->dev), IB_DEVICE_NAME_MAX);

	ret = FUNC8(&devices, &device->index, device, xa_limit_31b,
			&last_id, GFP_KERNEL);
	if (ret > 0)
		ret = 0;

out:
	FUNC7(&devices_rwsem);
	return ret;
}