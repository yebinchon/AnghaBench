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
struct ib_umad_device {TYPE_1__* ports; } ;
struct ib_device {int dummy; } ;
struct ib_client_nl_info {size_t port; int /*<<< orphan*/ * cdev; int /*<<< orphan*/  abi; } ;
struct TYPE_2__ {int /*<<< orphan*/  sm_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IB_USER_MAD_ABI_VERSION ; 
 struct ib_umad_device* FUNC0 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,size_t) ; 
 size_t FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  umad_client ; 

__attribute__((used)) static int FUNC3(struct ib_device *ibdev, void *client_data,
			       struct ib_client_nl_info *res)
{
	struct ib_umad_device *umad_dev =
		FUNC0(ibdev, &umad_client);

	if (!FUNC1(ibdev, res->port))
		return -EINVAL;

	res->abi = IB_USER_MAD_ABI_VERSION;
	res->cdev = &umad_dev->ports[res->port - FUNC2(ibdev)].sm_dev;

	return 0;
}