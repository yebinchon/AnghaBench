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
struct TYPE_5__ {int /*<<< orphan*/  attr; } ;
struct TYPE_4__ {int /*<<< orphan*/  attr; } ;
struct mlx4_port {scalar_t__ slave; TYPE_2__ enable_smi_admin; int /*<<< orphan*/  kobj; TYPE_1__ smi_enabled; TYPE_3__* dev; int /*<<< orphan*/  port_num; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  ib_dev; } ;

/* Variables and functions */
 scalar_t__ IB_LINK_LAYER_ETHERNET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlx4_port *p)
{
	int is_eth = FUNC1(&p->dev->ib_dev, p->port_num) ==
			IB_LINK_LAYER_ETHERNET;

	if (is_eth || p->slave == FUNC0(p->dev->dev))
		return;

	FUNC2(&p->kobj, &p->smi_enabled.attr);
	FUNC2(&p->kobj, &p->enable_smi_admin.attr);
}