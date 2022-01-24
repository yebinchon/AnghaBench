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
struct its_vpe {int vpe_proxy_event; int /*<<< orphan*/  vpe_db_lpi; int /*<<< orphan*/  col_idx; } ;
struct TYPE_4__ {int /*<<< orphan*/ * col_map; } ;
struct TYPE_6__ {int nr_ites; TYPE_1__ event_map; } ;
struct TYPE_5__ {size_t next_victim; TYPE_3__* dev; struct its_vpe** vpes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct its_vpe*) ; 
 TYPE_2__ vpe_proxy ; 

__attribute__((used)) static void FUNC2(struct its_vpe *vpe)
{
	/* Already mapped? */
	if (vpe->vpe_proxy_event != -1)
		return;

	/* This slot was already allocated. Kick the other VPE out. */
	if (vpe_proxy.vpes[vpe_proxy.next_victim])
		FUNC1(vpe_proxy.vpes[vpe_proxy.next_victim]);

	/* Map the new VPE instead */
	vpe_proxy.vpes[vpe_proxy.next_victim] = vpe;
	vpe->vpe_proxy_event = vpe_proxy.next_victim;
	vpe_proxy.next_victim = (vpe_proxy.next_victim + 1) % vpe_proxy.dev->nr_ites;

	vpe_proxy.dev->event_map.col_map[vpe->vpe_proxy_event] = vpe->col_idx;
	FUNC0(vpe_proxy.dev, vpe->vpe_db_lpi, vpe->vpe_proxy_event);
}