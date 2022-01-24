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
struct net {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  devices ; 
 int /*<<< orphan*/  devices_rwsem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,struct net const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ib_device* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct ib_device *FUNC5(const struct net *net, u32 index)
{
	struct ib_device *device;

	FUNC0(&devices_rwsem);
	device = FUNC4(&devices, index);
	if (device) {
		if (!FUNC2(device, net)) {
			device = NULL;
			goto out;
		}

		if (!FUNC1(device))
			device = NULL;
	}
out:
	FUNC3(&devices_rwsem);
	return device;
}