#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx4_ib_iov_port {int /*<<< orphan*/  dentr_ar; TYPE_2__* dev; int /*<<< orphan*/  cur_port; int /*<<< orphan*/  mcgs_parent; int /*<<< orphan*/  pkeys_parent; int /*<<< orphan*/  gids_parent; int /*<<< orphan*/  admin_alias_parent; } ;
struct mlx4_ib_dev {struct mlx4_ib_iov_port* iov_ports; TYPE_3__* dev; } ;
struct TYPE_4__ {int num_ports; } ;
struct TYPE_6__ {TYPE_1__ caps; } ;
struct TYPE_5__ {int /*<<< orphan*/  ports_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC3(struct mlx4_ib_dev *device)
{
	struct mlx4_ib_iov_port *p;
	int i;

	if (!FUNC2(device->dev))
		return;

	for (i = 0; i < device->dev->caps.num_ports; i++) {
		p = &device->iov_ports[i];
		FUNC1(p->admin_alias_parent);
		FUNC1(p->gids_parent);
		FUNC1(p->pkeys_parent);
		FUNC1(p->mcgs_parent);
		FUNC1(p->cur_port);
		FUNC1(p->cur_port);
		FUNC1(p->cur_port);
		FUNC1(p->cur_port);
		FUNC1(p->cur_port);
		FUNC1(p->dev->ports_parent);
		FUNC0(p->dentr_ar);
	}
}