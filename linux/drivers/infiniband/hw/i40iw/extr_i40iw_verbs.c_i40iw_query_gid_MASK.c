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
union ib_gid {int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  u8 ;
struct ib_device {int dummy; } ;
struct i40iw_device {TYPE_1__* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct i40iw_device* FUNC2 (struct ib_device*) ; 

__attribute__((used)) static int FUNC3(struct ib_device *ibdev,
			   u8 port,
			   int index,
			   union ib_gid *gid)
{
	struct i40iw_device *iwdev = FUNC2(ibdev);

	FUNC1(gid->raw, 0, sizeof(gid->raw));
	FUNC0(gid->raw, iwdev->netdev->dev_addr);
	return 0;
}