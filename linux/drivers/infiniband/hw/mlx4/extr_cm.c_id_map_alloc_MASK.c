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
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_ib_sriov {int /*<<< orphan*/  id_map_lock; int /*<<< orphan*/  cm_list; int /*<<< orphan*/  pv_id_next; int /*<<< orphan*/  pv_id_table; } ;
struct id_map_entry {int slave_id; int /*<<< orphan*/  list; int /*<<< orphan*/  pv_cm_id; int /*<<< orphan*/  timeout; TYPE_1__* dev; scalar_t__ scheduled_delete; int /*<<< orphan*/  sl_cm_id; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct mlx4_ib_sriov sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct id_map_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  id_map_ent_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct id_map_entry*) ; 
 struct id_map_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*,struct id_map_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (struct ib_device*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct id_map_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xa_limit_32b ; 

__attribute__((used)) static struct id_map_entry *
FUNC11(struct ib_device *ibdev, int slave_id, u32 sl_cm_id)
{
	int ret;
	struct id_map_entry *ent;
	struct mlx4_ib_sriov *sriov = &FUNC9(ibdev)->sriov;

	ent = FUNC3(sizeof (struct id_map_entry), GFP_KERNEL);
	if (!ent)
		return FUNC0(-ENOMEM);

	ent->sl_cm_id = sl_cm_id;
	ent->slave_id = slave_id;
	ent->scheduled_delete = 0;
	ent->dev = FUNC9(ibdev);
	FUNC1(&ent->timeout, id_map_ent_timeout);

	ret = FUNC10(&sriov->pv_id_table, &ent->pv_cm_id, ent,
			xa_limit_32b, &sriov->pv_id_next, GFP_KERNEL);
	if (ret >= 0) {
		FUNC7(&sriov->id_map_lock);
		FUNC6(ibdev, ent);
		FUNC4(&ent->list, &sriov->cm_list);
		FUNC8(&sriov->id_map_lock);
		return ent;
	}

	/*error flow*/
	FUNC2(ent);
	FUNC5(ibdev, "Allocation failed (err:0x%x)\n", ret);
	return FUNC0(-ENOMEM);
}