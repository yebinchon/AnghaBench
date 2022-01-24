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
union ib_gid {int /*<<< orphan*/ * raw; } ;
typedef  int /*<<< orphan*/  u8 ;
struct siw_device {TYPE_1__* netdev; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (union ib_gid*,int /*<<< orphan*/ ,int) ; 
 struct siw_device* FUNC2 (struct ib_device*) ; 

int FUNC3(struct ib_device *base_dev, u8 port, int idx,
		  union ib_gid *gid)
{
	struct siw_device *sdev = FUNC2(base_dev);

	/* subnet_prefix == interface_id == 0; */
	FUNC1(gid, 0, sizeof(*gid));
	FUNC0(&gid->raw[0], sdev->netdev->dev_addr, 6);

	return 0;
}