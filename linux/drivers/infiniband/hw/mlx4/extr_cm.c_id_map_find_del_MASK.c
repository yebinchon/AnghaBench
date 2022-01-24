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
struct rb_root {int dummy; } ;
struct mlx4_ib_sriov {int /*<<< orphan*/  id_map_lock; int /*<<< orphan*/  pv_id_table; struct rb_root sl_id_map; } ;
struct id_map_entry {int /*<<< orphan*/  node; int /*<<< orphan*/  sl_cm_id; int /*<<< orphan*/  slave_id; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct mlx4_ib_sriov sriov; } ;

/* Variables and functions */
 struct id_map_entry* FUNC0 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rb_root*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct ib_device*) ; 
 struct id_map_entry* FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(struct ib_device *ibdev, int pv_cm_id)
{
	struct mlx4_ib_sriov *sriov = &FUNC4(ibdev)->sriov;
	struct rb_root *sl_id_map = &sriov->sl_id_map;
	struct id_map_entry *ent, *found_ent;

	FUNC2(&sriov->id_map_lock);
	ent = FUNC5(&sriov->pv_id_table, pv_cm_id);
	if (!ent)
		goto out;
	found_ent = FUNC0(ibdev, ent->slave_id, ent->sl_cm_id);
	if (found_ent && found_ent == ent)
		FUNC1(&found_ent->node, sl_id_map);
out:
	FUNC3(&sriov->id_map_lock);
}