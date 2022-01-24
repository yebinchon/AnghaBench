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
struct TYPE_2__ {scalar_t__ target2; scalar_t__ target; } ;
struct stripe_head {int disks; scalar_t__ check_state; struct r5conf* raid_conf; struct r5dev* dev; int /*<<< orphan*/  batch_head; TYPE_1__ ops; } ;
struct raid5_percpu {int dummy; } ;
struct r5dev {int /*<<< orphan*/  flags; } ;
struct r5conf {int level; int /*<<< orphan*/  wait_for_overlap; int /*<<< orphan*/  percpu; } ;
struct dma_async_tx_descriptor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  R5_Overlap ; 
 int /*<<< orphan*/  STRIPE_OP_BIODRAIN ; 
 int /*<<< orphan*/  STRIPE_OP_BIOFILL ; 
 int /*<<< orphan*/  STRIPE_OP_CHECK ; 
 int /*<<< orphan*/  STRIPE_OP_COMPUTE_BLK ; 
 int /*<<< orphan*/  STRIPE_OP_PARTIAL_PARITY ; 
 int /*<<< orphan*/  STRIPE_OP_PREXOR ; 
 int /*<<< orphan*/  STRIPE_OP_RECONSTRUCT ; 
 int /*<<< orphan*/  FUNC1 (struct dma_async_tx_descriptor*) ; 
 scalar_t__ check_state_run ; 
 scalar_t__ check_state_run_pq ; 
 scalar_t__ check_state_run_q ; 
 unsigned long FUNC2 () ; 
 struct dma_async_tx_descriptor* FUNC3 (struct stripe_head*,struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct stripe_head*,struct raid5_percpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe_head*,struct raid5_percpu*,int) ; 
 struct dma_async_tx_descriptor* FUNC7 (struct stripe_head*,struct raid5_percpu*) ; 
 struct dma_async_tx_descriptor* FUNC8 (struct stripe_head*,struct raid5_percpu*) ; 
 struct dma_async_tx_descriptor* FUNC9 (struct stripe_head*,struct raid5_percpu*) ; 
 struct dma_async_tx_descriptor* FUNC10 (struct stripe_head*,struct raid5_percpu*,struct dma_async_tx_descriptor*) ; 
 struct dma_async_tx_descriptor* FUNC11 (struct stripe_head*,struct raid5_percpu*,struct dma_async_tx_descriptor*) ; 
 struct dma_async_tx_descriptor* FUNC12 (struct stripe_head*,struct raid5_percpu*,struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC13 (struct stripe_head*,struct raid5_percpu*,struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC14 (struct stripe_head*,struct raid5_percpu*,struct dma_async_tx_descriptor*) ; 
 struct raid5_percpu* FUNC15 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(struct stripe_head *sh, unsigned long ops_request)
{
	int overlap_clear = 0, i, disks = sh->disks;
	struct dma_async_tx_descriptor *tx = NULL;
	struct r5conf *conf = sh->raid_conf;
	int level = conf->level;
	struct raid5_percpu *percpu;
	unsigned long cpu;

	cpu = FUNC2();
	percpu = FUNC15(conf->percpu, cpu);
	if (FUNC18(STRIPE_OP_BIOFILL, &ops_request)) {
		FUNC4(sh);
		overlap_clear++;
	}

	if (FUNC18(STRIPE_OP_COMPUTE_BLK, &ops_request)) {
		if (level < 6)
			tx = FUNC7(sh, percpu);
		else {
			if (sh->ops.target2 < 0 || sh->ops.target < 0)
				tx = FUNC8(sh, percpu);
			else
				tx = FUNC9(sh, percpu);
		}
		/* terminate the chain if reconstruct is not set to be run */
		if (tx && !FUNC18(STRIPE_OP_RECONSTRUCT, &ops_request))
			FUNC1(tx);
	}

	if (FUNC18(STRIPE_OP_PREXOR, &ops_request)) {
		if (level < 6)
			tx = FUNC11(sh, percpu, tx);
		else
			tx = FUNC12(sh, percpu, tx);
	}

	if (FUNC18(STRIPE_OP_PARTIAL_PARITY, &ops_request))
		tx = FUNC10(sh, percpu, tx);

	if (FUNC18(STRIPE_OP_BIODRAIN, &ops_request)) {
		tx = FUNC3(sh, tx);
		overlap_clear++;
	}

	if (FUNC18(STRIPE_OP_RECONSTRUCT, &ops_request)) {
		if (level < 6)
			FUNC13(sh, percpu, tx);
		else
			FUNC14(sh, percpu, tx);
	}

	if (FUNC18(STRIPE_OP_CHECK, &ops_request)) {
		if (sh->check_state == check_state_run)
			FUNC5(sh, percpu);
		else if (sh->check_state == check_state_run_q)
			FUNC6(sh, percpu, 0);
		else if (sh->check_state == check_state_run_pq)
			FUNC6(sh, percpu, 1);
		else
			FUNC0();
	}

	if (overlap_clear && !sh->batch_head)
		for (i = disks; i--; ) {
			struct r5dev *dev = &sh->dev[i];
			if (FUNC17(R5_Overlap, &dev->flags))
				FUNC19(&sh->raid_conf->wait_for_overlap);
		}
	FUNC16();
}