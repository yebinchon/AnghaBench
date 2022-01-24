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
struct ib_udata {int /*<<< orphan*/  inlen; int /*<<< orphan*/  outlen; } ;
struct TYPE_2__ {int (* query_device ) (struct ib_device*,int /*<<< orphan*/ *,struct ib_udata*) ;} ;
struct ib_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  attrs; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*) ; 
 int FUNC4 (struct ib_device*) ; 
 int FUNC5 (struct ib_device*,int /*<<< orphan*/ *,struct ib_udata*) ; 

__attribute__((used)) static int FUNC6(struct ib_device *device)
{
	struct ib_udata uhw = {.outlen = 0, .inlen = 0};
	int ret;

	FUNC3(device);
	FUNC1(device);

	ret = FUNC4(device);
	if (ret) {
		FUNC0(&device->dev, "Couldn't create per-port data\n");
		return ret;
	}

	FUNC2(&device->attrs, 0, sizeof(device->attrs));
	ret = device->ops.query_device(device, &device->attrs, &uhw);
	if (ret) {
		FUNC0(&device->dev,
			 "Couldn't query the device attributes\n");
		return ret;
	}

	return 0;
}