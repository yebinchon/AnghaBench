#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
struct mlx4_sriov_alias_guid_port_rec_det {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/ * sa_client; TYPE_6__* ports_guid; int /*<<< orphan*/  ag_work_lock; } ;
struct TYPE_10__ {TYPE_3__ alias_guid; } ;
struct TYPE_7__ {scalar_t__ (* query_gid ) (TYPE_5__*,int,int /*<<< orphan*/ ,union ib_gid*) ;} ;
struct TYPE_11__ {TYPE_1__ ops; } ;
struct mlx4_ib_dev {int num_ports; TYPE_4__ sriov; int /*<<< orphan*/  dev; TYPE_5__ ib_dev; } ;
struct TYPE_12__ {int port; int /*<<< orphan*/ * wq; int /*<<< orphan*/  alias_guid_work; TYPE_3__* parent; int /*<<< orphan*/  cb_list; TYPE_2__* all_rec_per_port; int /*<<< orphan*/  state_flags; } ;
struct TYPE_8__ {TYPE_6__* all_recs; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GUID_STATE_NEED_PORT_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NUM_ALIAS_GUID_PER_PORT ; 
 int NUM_ALIAS_GUID_REC_IN_PORT ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  alias_guid_work ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_ib_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int,int) ; 
 scalar_t__ mlx4_ib_sm_guid_assign ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_5__*,int,int /*<<< orphan*/ ,union ib_gid*) ; 

int FUNC16(struct mlx4_ib_dev *dev)
{
	char alias_wq_name[15];
	int ret = 0;
	int i, j;
	union ib_gid gid;

	if (!FUNC10(dev->dev))
		return 0;
	dev->sriov.alias_guid.sa_client =
		FUNC8(sizeof *dev->sriov.alias_guid.sa_client, GFP_KERNEL);
	if (!dev->sriov.alias_guid.sa_client)
		return -ENOMEM;

	FUNC4(dev->sriov.alias_guid.sa_client);

	FUNC14(&dev->sriov.alias_guid.ag_work_lock);

	for (i = 1; i <= dev->num_ports; ++i) {
		if (dev->ib_dev.ops.query_gid(&dev->ib_dev, i, 0, &gid)) {
			ret = -EFAULT;
			goto err_unregister;
		}
	}

	for (i = 0 ; i < dev->num_ports; i++) {
		FUNC9(&dev->sriov.alias_guid.ports_guid[i], 0,
		       sizeof (struct mlx4_sriov_alias_guid_port_rec_det));
		dev->sriov.alias_guid.ports_guid[i].state_flags |=
				GUID_STATE_NEED_PORT_INIT;
		for (j = 0; j < NUM_ALIAS_GUID_REC_IN_PORT; j++) {
			/* mark each val as it was deleted */
			FUNC9(dev->sriov.alias_guid.ports_guid[i].
				all_rec_per_port[j].all_recs, 0xFF,
				sizeof(dev->sriov.alias_guid.ports_guid[i].
				all_rec_per_port[j].all_recs));
		}
		FUNC1(&dev->sriov.alias_guid.ports_guid[i].cb_list);
		/*prepare the records, set them to be allocated by sm*/
		if (mlx4_ib_sm_guid_assign)
			for (j = 1; j < NUM_ALIAS_GUID_PER_PORT; j++)
				FUNC11(dev->dev, 0, j, i + 1);
		for (j = 0 ; j < NUM_ALIAS_GUID_REC_IN_PORT; j++)
			FUNC6(dev, i + 1, j);

		dev->sriov.alias_guid.ports_guid[i].parent = &dev->sriov.alias_guid;
		dev->sriov.alias_guid.ports_guid[i].port  = i;

		FUNC13(alias_wq_name, sizeof alias_wq_name, "alias_guid%d", i);
		dev->sriov.alias_guid.ports_guid[i].wq =
			FUNC2(alias_wq_name, WQ_MEM_RECLAIM);
		if (!dev->sriov.alias_guid.ports_guid[i].wq) {
			ret = -ENOMEM;
			goto err_thread;
		}
		FUNC0(&dev->sriov.alias_guid.ports_guid[i].alias_guid_work,
			  alias_guid_work);
	}
	return 0;

err_thread:
	for (--i; i >= 0; i--) {
		FUNC3(dev->sriov.alias_guid.ports_guid[i].wq);
		dev->sriov.alias_guid.ports_guid[i].wq = NULL;
	}

err_unregister:
	FUNC5(dev->sriov.alias_guid.sa_client);
	FUNC7(dev->sriov.alias_guid.sa_client);
	dev->sriov.alias_guid.sa_client = NULL;
	FUNC12("init_alias_guid_service: Failed. (ret:%d)\n", ret);
	return ret;
}