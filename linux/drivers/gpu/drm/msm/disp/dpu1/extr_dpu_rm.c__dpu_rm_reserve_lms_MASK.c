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
typedef  void* uint32_t ;
struct TYPE_2__ {int num_lm; } ;
struct dpu_rm_requirements {TYPE_1__ topology; } ;
struct dpu_rm_hw_iter {struct dpu_rm_hw_blk* blk; } ;
struct dpu_rm_hw_blk {int /*<<< orphan*/  id; void* enc_id; } ;
struct dpu_rm {int dummy; } ;
typedef  int /*<<< orphan*/  pp ;
typedef  int /*<<< orphan*/  lm ;

/* Variables and functions */
 int FUNC0 (struct dpu_rm_hw_blk**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  DPU_HW_BLK_LM ; 
 int EINVAL ; 
 int ENAVAIL ; 
 int MAX_BLOCKS ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_rm*,void*,struct dpu_rm_requirements*,struct dpu_rm_hw_blk*,struct dpu_rm_hw_blk**,struct dpu_rm_hw_blk*) ; 
 scalar_t__ FUNC4 (struct dpu_rm*,struct dpu_rm_hw_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct dpu_rm_hw_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dpu_rm_hw_blk***,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dpu_rm *rm, uint32_t enc_id,
			       struct dpu_rm_requirements *reqs)

{
	struct dpu_rm_hw_blk *lm[MAX_BLOCKS];
	struct dpu_rm_hw_blk *pp[MAX_BLOCKS];
	struct dpu_rm_hw_iter iter_i, iter_j;
	int lm_count = 0;
	int i, rc = 0;

	if (!reqs->topology.num_lm) {
		FUNC2("invalid number of lm: %d\n", reqs->topology.num_lm);
		return -EINVAL;
	}

	/* Find a primary mixer */
	FUNC5(&iter_i, 0, DPU_HW_BLK_LM);
	while (lm_count != reqs->topology.num_lm &&
			FUNC4(rm, &iter_i)) {
		FUNC6(&lm, 0, sizeof(lm));
		FUNC6(&pp, 0, sizeof(pp));

		lm_count = 0;
		lm[lm_count] = iter_i.blk;

		if (!FUNC3(
				rm, enc_id, reqs, lm[lm_count],
				&pp[lm_count], NULL))
			continue;

		++lm_count;

		/* Valid primary mixer found, find matching peers */
		FUNC5(&iter_j, 0, DPU_HW_BLK_LM);

		while (lm_count != reqs->topology.num_lm &&
				FUNC4(rm, &iter_j)) {
			if (iter_i.blk == iter_j.blk)
				continue;

			if (!FUNC3(
					rm, enc_id, reqs, iter_j.blk,
					&pp[lm_count], iter_i.blk))
				continue;

			lm[lm_count] = iter_j.blk;
			++lm_count;
		}
	}

	if (lm_count != reqs->topology.num_lm) {
		FUNC1("unable to find appropriate mixers\n");
		return -ENAVAIL;
	}

	for (i = 0; i < FUNC0(lm); i++) {
		if (!lm[i])
			break;

		lm[i]->enc_id = enc_id;
		pp[i]->enc_id = enc_id;

		FUNC7(lm[i]->id, enc_id, pp[i]->id);
	}

	return rc;
}