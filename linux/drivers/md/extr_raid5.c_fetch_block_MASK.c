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
struct stripe_head_state {int uptodate; int failed; int* failed_num; int req_compute; int syncing; int /*<<< orphan*/  locked; int /*<<< orphan*/  ops_request; } ;
struct TYPE_2__ {int target; int target2; } ;
struct stripe_head {int batch_head; scalar_t__ qd_idx; int pd_idx; TYPE_1__ ops; struct r5dev* dev; int /*<<< orphan*/  state; scalar_t__ sector; } ;
struct r5dev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R5_Insync ; 
 int /*<<< orphan*/  R5_LOCKED ; 
 int /*<<< orphan*/  R5_UPTODATE ; 
 int /*<<< orphan*/  R5_Wantcompute ; 
 int /*<<< orphan*/  R5_Wantread ; 
 int /*<<< orphan*/  STRIPE_COMPUTE_RUN ; 
 int /*<<< orphan*/  STRIPE_OP_COMPUTE_BLK ; 
 scalar_t__ FUNC1 (struct stripe_head*,struct stripe_head_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct stripe_head *sh, struct stripe_head_state *s,
		       int disk_idx, int disks)
{
	struct r5dev *dev = &sh->dev[disk_idx];

	/* is the data in this block needed, and can we get it? */
	if (FUNC1(sh, s, disk_idx, disks)) {
		/* we would like to get this block, possibly by computing it,
		 * otherwise read it if the backing disk is insync
		 */
		FUNC0(FUNC4(R5_Wantcompute, &dev->flags));
		FUNC0(FUNC4(R5_Wantread, &dev->flags));
		FUNC0(sh->batch_head);

		/*
		 * In the raid6 case if the only non-uptodate disk is P
		 * then we already trusted P to compute the other failed
		 * drives. It is safe to compute rather than re-read P.
		 * In other cases we only compute blocks from failed
		 * devices, otherwise check/repair might fail to detect
		 * a real inconsistency.
		 */

		if ((s->uptodate == disks - 1) &&
		    ((sh->qd_idx >= 0 && sh->pd_idx == disk_idx) ||
		    (s->failed && (disk_idx == s->failed_num[0] ||
				   disk_idx == s->failed_num[1])))) {
			/* have disk failed, and we're requested to fetch it;
			 * do compute it
			 */
			FUNC2("Computing stripe %llu block %d\n",
			       (unsigned long long)sh->sector, disk_idx);
			FUNC3(STRIPE_COMPUTE_RUN, &sh->state);
			FUNC3(STRIPE_OP_COMPUTE_BLK, &s->ops_request);
			FUNC3(R5_Wantcompute, &dev->flags);
			sh->ops.target = disk_idx;
			sh->ops.target2 = -1; /* no 2nd target */
			s->req_compute = 1;
			/* Careful: from this point on 'uptodate' is in the eye
			 * of raid_run_ops which services 'compute' operations
			 * before writes. R5_Wantcompute flags a block that will
			 * be R5_UPTODATE by the time it is needed for a
			 * subsequent operation.
			 */
			s->uptodate++;
			return 1;
		} else if (s->uptodate == disks-2 && s->failed >= 2) {
			/* Computing 2-failure is *very* expensive; only
			 * do it if failed >= 2
			 */
			int other;
			for (other = disks; other--; ) {
				if (other == disk_idx)
					continue;
				if (!FUNC4(R5_UPTODATE,
				      &sh->dev[other].flags))
					break;
			}
			FUNC0(other < 0);
			FUNC2("Computing stripe %llu blocks %d,%d\n",
			       (unsigned long long)sh->sector,
			       disk_idx, other);
			FUNC3(STRIPE_COMPUTE_RUN, &sh->state);
			FUNC3(STRIPE_OP_COMPUTE_BLK, &s->ops_request);
			FUNC3(R5_Wantcompute, &sh->dev[disk_idx].flags);
			FUNC3(R5_Wantcompute, &sh->dev[other].flags);
			sh->ops.target = disk_idx;
			sh->ops.target2 = other;
			s->uptodate += 2;
			s->req_compute = 1;
			return 1;
		} else if (FUNC4(R5_Insync, &dev->flags)) {
			FUNC3(R5_LOCKED, &dev->flags);
			FUNC3(R5_Wantread, &dev->flags);
			s->locked++;
			FUNC2("Reading block %d (sync=%d)\n",
				disk_idx, s->syncing);
		}
	}

	return 0;
}