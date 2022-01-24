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
struct host1x_waitlist {int dummy; } ;
struct host1x_syncpt {scalar_t__ base; } ;
struct host1x_job {int syncpt_id; scalar_t__ class; int /*<<< orphan*/  syncpt_end; scalar_t__ serialize; int /*<<< orphan*/  syncpt_incrs; int /*<<< orphan*/  num_relocs; int /*<<< orphan*/  num_gathers; struct host1x_channel* channel; } ;
struct host1x_channel {int /*<<< orphan*/  submitlock; TYPE_1__* dev; int /*<<< orphan*/  cdma; } ;
struct host1x {struct host1x_syncpt* syncpt; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HOST1X_CLASS_HOST1X ; 
 int /*<<< orphan*/  HOST1X_INTR_ACTION_SUBMIT_COMPLETE ; 
 int /*<<< orphan*/  HOST1X_OPCODE_NOP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct host1x* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct host1x_job*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct host1x_job*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct host1x_channel*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct host1x*,struct host1x_syncpt*,struct host1x_channel*) ; 
 int FUNC9 (struct host1x*,struct host1x_syncpt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct host1x_channel*,struct host1x_waitlist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct host1x_syncpt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct host1x_syncpt*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct host1x_waitlist*) ; 
 struct host1x_waitlist* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct host1x_job*) ; 
 int /*<<< orphan*/  FUNC19 (struct host1x_job*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct host1x_job *job)
{
	struct host1x_channel *ch = job->channel;
	struct host1x_syncpt *sp;
	u32 user_syncpt_incrs = job->syncpt_incrs;
	u32 prev_max = 0;
	u32 syncval;
	int err;
	struct host1x_waitlist *completed_waiter = NULL;
	struct host1x *host = FUNC1(ch->dev->parent);

	sp = host->syncpt + job->syncpt_id;
	FUNC20(FUNC2(ch->dev),
				    job->num_gathers, job->num_relocs,
				    job->syncpt_id, job->syncpt_incrs);

	/* before error checks, return current max */
	prev_max = job->syncpt_end = FUNC12(sp);

	/* get submit lock */
	err = FUNC16(&ch->submitlock);
	if (err)
		goto error;

	completed_waiter = FUNC15(sizeof(*completed_waiter), GFP_KERNEL);
	if (!completed_waiter) {
		FUNC17(&ch->submitlock);
		err = -ENOMEM;
		goto error;
	}

	FUNC6(ch);

	/* begin a CDMA submit */
	err = FUNC3(&ch->cdma, job);
	if (err) {
		FUNC17(&ch->submitlock);
		goto error;
	}

	if (job->serialize) {
		/*
		 * Force serialization by inserting a host wait for the
		 * previous job to finish before this one can commence.
		 */
		FUNC5(&ch->cdma,
				 FUNC10(HOST1X_CLASS_HOST1X,
					FUNC13(), 1),
				 FUNC7(job->syncpt_id,
					FUNC12(sp)));
	}

	/* Synchronize base register to allow using it for relative waiting */
	if (sp->base)
		FUNC19(job);

	syncval = FUNC11(sp, user_syncpt_incrs);

	FUNC8(host, sp, ch);

	job->syncpt_end = syncval;

	/* add a setclass for modules that require it */
	if (job->class)
		FUNC5(&ch->cdma,
				 FUNC10(job->class, 0, 0),
				 HOST1X_OPCODE_NOP);

	FUNC18(job);

	/* end CDMA submit & stash pinned hMems into sync queue */
	FUNC4(&ch->cdma, job);

	FUNC21(FUNC2(ch->dev), prev_max, syncval);

	/* schedule a submit complete interrupt */
	err = FUNC9(host, sp, syncval,
				     HOST1X_INTR_ACTION_SUBMIT_COMPLETE, ch,
				     completed_waiter, NULL);
	completed_waiter = NULL;
	FUNC0(err, "Failed to set submit complete interrupt");

	FUNC17(&ch->submitlock);

	return 0;

error:
	FUNC14(completed_waiter);
	return err;
}