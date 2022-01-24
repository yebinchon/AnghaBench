#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int qp_table_size; int /*<<< orphan*/  node; } ;
struct TYPE_7__ {int /*<<< orphan*/  notify_restart_rc; int /*<<< orphan*/  notify_qp_reset; int /*<<< orphan*/  qp_priv_free; int /*<<< orphan*/  qp_priv_alloc; int /*<<< orphan*/  free_all_qps; } ;
struct rvt_dev_info {TYPE_3__* qp_dev; int /*<<< orphan*/  n_qps_lock; TYPE_2__ dparms; TYPE_1__ driver_f; } ;
struct TYPE_9__ {int qp_table_size; int /*<<< orphan*/  qpn_table; struct TYPE_9__* qp_table; int /*<<< orphan*/  qpt_lock; int /*<<< orphan*/  qp_table_bits; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct rvt_dev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct rvt_dev_info *rdi)
{
	int i;
	int ret = -ENOMEM;

	if (!rdi->dparms.qp_table_size)
		return -EINVAL;

	/*
	 * If driver is not doing any QP allocation then make sure it is
	 * providing the necessary QP functions.
	 */
	if (!rdi->driver_f.free_all_qps ||
	    !rdi->driver_f.qp_priv_alloc ||
	    !rdi->driver_f.qp_priv_free ||
	    !rdi->driver_f.notify_qp_reset ||
	    !rdi->driver_f.notify_restart_rc)
		return -EINVAL;

	/* allocate parent object */
	rdi->qp_dev = FUNC6(sizeof(*rdi->qp_dev), GFP_KERNEL,
				   rdi->dparms.node);
	if (!rdi->qp_dev)
		return -ENOMEM;

	/* allocate hash table */
	rdi->qp_dev->qp_table_size = rdi->dparms.qp_table_size;
	rdi->qp_dev->qp_table_bits = FUNC2(rdi->dparms.qp_table_size);
	rdi->qp_dev->qp_table =
		FUNC5(rdi->qp_dev->qp_table_size,
			     sizeof(*rdi->qp_dev->qp_table),
			     GFP_KERNEL, rdi->dparms.node);
	if (!rdi->qp_dev->qp_table)
		goto no_qp_table;

	for (i = 0; i < rdi->qp_dev->qp_table_size; i++)
		FUNC0(rdi->qp_dev->qp_table[i], NULL);

	FUNC7(&rdi->qp_dev->qpt_lock);

	/* initialize qpn map */
	if (FUNC3(rdi, &rdi->qp_dev->qpn_table))
		goto fail_table;

	FUNC7(&rdi->n_qps_lock);

	return 0;

fail_table:
	FUNC4(rdi->qp_dev->qp_table);
	FUNC1(&rdi->qp_dev->qpn_table);

no_qp_table:
	FUNC4(rdi->qp_dev);

	return ret;
}