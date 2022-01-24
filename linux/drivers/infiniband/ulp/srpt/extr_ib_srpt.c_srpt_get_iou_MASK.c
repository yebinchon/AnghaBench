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
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ status; } ;
struct ib_dm_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_dm_iou_info {int max_controllers; int /*<<< orphan*/  controller_list; int /*<<< orphan*/  change_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct ib_dm_mad *mad)
{
	struct ib_dm_iou_info *ioui;
	u8 slot;
	int i;

	ioui = (struct ib_dm_iou_info *)mad->data;
	ioui->change_id = FUNC0(1);
	ioui->max_controllers = 16;

	/* set present for slot 1 and empty for the rest */
	FUNC1(ioui->controller_list, 1, 1);
	for (i = 1, slot = 2; i < 16; i++, slot++)
		FUNC1(ioui->controller_list, slot, 0);

	mad->mad_hdr.status = 0;
}