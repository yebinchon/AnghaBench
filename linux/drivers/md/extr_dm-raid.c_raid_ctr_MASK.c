#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct rs_layout {int dummy; } ;
struct raid_type {int dummy; } ;
struct TYPE_15__ {scalar_t__ dev_sectors; int ro; int in_sync; TYPE_2__* pers; int /*<<< orphan*/  recovery; int /*<<< orphan*/  flags; int /*<<< orphan*/  event_work; int /*<<< orphan*/  sync_super; } ;
struct TYPE_13__ {int /*<<< orphan*/  mode; } ;
struct TYPE_12__ {int /*<<< orphan*/  congested_fn; } ;
struct raid_set {TYPE_3__ md; int /*<<< orphan*/  runtime_flags; TYPE_1__ journal_dev; int /*<<< orphan*/  ctr_flags; TYPE_11__ callbacks; } ;
struct dm_target {char* error; int num_flush_bios; int /*<<< orphan*/  table; struct raid_set* private; } ;
struct dm_arg_set {unsigned int member_0; char** member_1; int argc; } ;
struct dm_arg {int member_0; int member_1; char* member_2; int max; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_14__ {int (* check_reshape ) (TYPE_3__*) ;scalar_t__ start_reshape; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct raid_set*) ; 
 int /*<<< orphan*/  MAX_RAID_DEVICES ; 
 int /*<<< orphan*/  MD_ARRAY_FIRST_USE ; 
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 scalar_t__ MaxSector ; 
 int FUNC2 (struct raid_set*) ; 
 int /*<<< orphan*/  RT_FLAG_RESHAPE_RS ; 
 int /*<<< orphan*/  RT_FLAG_RS_SUSPENDED ; 
 int /*<<< orphan*/  RT_FLAG_UPDATE_SBS ; 
 int /*<<< orphan*/  __CTR_FLAG_JOURNAL_DEV ; 
 int /*<<< orphan*/  __CTR_FLAG_JOURNAL_MODE ; 
 int /*<<< orphan*/  __CTR_FLAG_NOSYNC ; 
 int /*<<< orphan*/  __CTR_FLAG_REBUILD ; 
 int /*<<< orphan*/  __CTR_FLAG_SYNC ; 
 scalar_t__ FUNC3 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct raid_set*) ; 
 int FUNC6 (struct dm_target*,struct raid_set*) ; 
 int /*<<< orphan*/  FUNC7 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_arg_set*,unsigned int) ; 
 scalar_t__ FUNC9 (struct dm_arg*,struct dm_arg_set*,unsigned int*,char**) ; 
 scalar_t__ FUNC10 (struct dm_arg*,struct dm_arg_set*,unsigned int*,char**) ; 
 char* FUNC11 (struct dm_arg_set*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_11__*) ; 
 int /*<<< orphan*/  do_table_event ; 
 struct raid_type* FUNC13 (char const*) ; 
 int FUNC14 (TYPE_3__*) ; 
 int FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int FUNC20 (struct raid_set*,struct dm_arg_set*) ; 
 int FUNC21 (struct raid_set*,struct dm_arg_set*,unsigned int) ; 
 int FUNC22 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raid_is_congested ; 
 struct raid_set* FUNC23 (struct dm_target*,struct raid_type*,unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (struct raid_set*) ; 
 int FUNC25 (struct raid_set*) ; 
 int FUNC26 (struct raid_set*) ; 
 int FUNC27 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC28 (struct raid_set*,struct rs_layout*) ; 
 int /*<<< orphan*/  FUNC29 (struct raid_set*,struct rs_layout*) ; 
 scalar_t__ FUNC30 (struct raid_set*) ; 
 scalar_t__ FUNC31 (struct raid_set*) ; 
 scalar_t__ FUNC32 (struct raid_set*) ; 
 scalar_t__ FUNC33 (struct raid_set*) ; 
 scalar_t__ FUNC34 (struct raid_set*) ; 
 int FUNC35 (struct raid_set*) ; 
 scalar_t__ FUNC36 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC37 (struct raid_set*) ; 
 int FUNC38 (struct raid_set*,int) ; 
 int /*<<< orphan*/  FUNC39 (struct raid_set*) ; 
 int FUNC40 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC41 (struct raid_set*,scalar_t__) ; 
 int FUNC42 (struct raid_set*) ; 
 scalar_t__ FUNC43 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC45 (TYPE_3__*) ; 
 int /*<<< orphan*/  super_sync ; 
 scalar_t__ FUNC46 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC47(struct dm_target *ti, unsigned int argc, char **argv)
{
	int r;
	bool resize = false;
	struct raid_type *rt;
	unsigned int num_raid_params, num_raid_devs;
	sector_t calculated_dev_sectors, rdev_sectors, reshape_sectors;
	struct raid_set *rs = NULL;
	const char *arg;
	struct rs_layout rs_layout;
	struct dm_arg_set as = { argc, argv }, as_nrd;
	struct dm_arg _args[] = {
		{ 0, as.argc, "Cannot understand number of raid parameters" },
		{ 1, 254, "Cannot understand number of raid devices parameters" }
	};

	/* Must have <raid_type> */
	arg = FUNC11(&as);
	if (!arg) {
		ti->error = "No arguments";
		return -EINVAL;
	}

	rt = FUNC13(arg);
	if (!rt) {
		ti->error = "Unrecognised raid_type";
		return -EINVAL;
	}

	/* Must have <#raid_params> */
	if (FUNC10(_args, &as, &num_raid_params, &ti->error))
		return -EINVAL;

	/* number of raid device tupples <meta_dev data_dev> */
	as_nrd = as;
	FUNC8(&as_nrd, num_raid_params);
	_args[1].max = (as_nrd.argc - 1) / 2;
	if (FUNC9(_args + 1, &as_nrd, &num_raid_devs, &ti->error))
		return -EINVAL;

	if (!FUNC4(num_raid_devs, 1, MAX_RAID_DEVICES)) {
		ti->error = "Invalid number of supplied raid devices";
		return -EINVAL;
	}

	rs = FUNC23(ti, rt, num_raid_devs);
	if (FUNC1(rs))
		return FUNC2(rs);

	r = FUNC21(rs, &as, num_raid_params);
	if (r)
		goto bad;

	r = FUNC20(rs, &as);
	if (r)
		goto bad;

	rs->md.sync_super = super_sync;

	/*
	 * Calculate ctr requested array and device sizes to allow
	 * for superblock analysis needing device sizes defined.
	 *
	 * Any existing superblock will overwrite the array and device sizes
	 */
	r = FUNC38(rs, false);
	if (r)
		goto bad;

	calculated_dev_sectors = rs->md.dev_sectors;

	/*
	 * Backup any new raid set level, layout, ...
	 * requested to be able to compare to superblock
	 * members for conversion decisions.
	 */
	FUNC28(rs, &rs_layout);

	r = FUNC6(ti, rs);
	if (r)
		goto bad;

	rdev_sectors = FUNC3(rs);
	if (!rdev_sectors) {
		ti->error = "Invalid rdev size";
		r = -EINVAL;
		goto bad;
	}


	reshape_sectors = FUNC5(rs);
	if (calculated_dev_sectors != rdev_sectors)
		resize = calculated_dev_sectors != (reshape_sectors ? rdev_sectors - reshape_sectors : rdev_sectors);

	FUNC0(&rs->md.event_work, do_table_event);
	ti->private = rs;
	ti->num_flush_bios = 1;

	/* Restore any requested new layout for conversion decision */
	FUNC29(rs, &rs_layout);

	/*
	 * Now that we have any superblock metadata available,
	 * check for new, recovering, reshaping, to be taken over,
	 * to be reshaped or an existing, unchanged raid set to
	 * run in sequence.
	 */
	if (FUNC46(MD_ARRAY_FIRST_USE, &rs->md.flags)) {
		/* A new raid6 set has to be recovered to ensure proper parity and Q-Syndrome */
		if (FUNC32(rs) &&
		    FUNC46(__CTR_FLAG_NOSYNC, &rs->ctr_flags)) {
			ti->error = "'nosync' not allowed for new raid6 set";
			r = -EINVAL;
			goto bad;
		}
		FUNC41(rs, 0);
		FUNC44(RT_FLAG_UPDATE_SBS, &rs->runtime_flags);
		FUNC39(rs);
	} else if (FUNC33(rs)) {
		/* Rebuild particular devices */
		if (FUNC46(__CTR_FLAG_REBUILD, &rs->ctr_flags)) {
			FUNC44(RT_FLAG_UPDATE_SBS, &rs->runtime_flags);
			FUNC41(rs, MaxSector);
		}
		/* A recovering raid set may be resized */
		; /* skip setup rs */
	} else if (FUNC34(rs)) {
		/* Have to reject size change request during reshape */
		if (resize) {
			ti->error = "Can't resize a reshaping raid set";
			r = -EPERM;
			goto bad;
		}
		/* skip setup rs */
	} else if (FUNC43(rs)) {
		if (FUNC34(rs)) {
			ti->error = "Can't takeover a reshaping raid set";
			r = -EPERM;
			goto bad;
		}

		/* We can't takeover a journaled raid4/5/6 */
		if (FUNC46(__CTR_FLAG_JOURNAL_DEV, &rs->ctr_flags)) {
			ti->error = "Can't takeover a journaled raid4/5/6 set";
			r = -EPERM;
			goto bad;
		}

		/*
		 * If a takeover is needed, userspace sets any additional
		 * devices to rebuild and we can check for a valid request here.
		 *
		 * If acceptible, set the level to the new requested
		 * one, prohibit requesting recovery, allow the raid
		 * set to run and store superblocks during resume.
		 */
		r = FUNC27(rs);
		if (r)
			goto bad;

		r = FUNC42(rs);
		if (r)
			goto bad;

		FUNC44(RT_FLAG_UPDATE_SBS, &rs->runtime_flags);
		/* Takeover ain't recovery, so disable recovery */
		FUNC41(rs, MaxSector);
		FUNC39(rs);
	} else if (FUNC36(rs)) {
		/*
		 * No need to check for 'ongoing' takeover here, because takeover
		 * is an instant operation as oposed to an ongoing reshape.
		 */

		/* We can't reshape a journaled raid4/5/6 */
		if (FUNC46(__CTR_FLAG_JOURNAL_DEV, &rs->ctr_flags)) {
			ti->error = "Can't reshape a journaled raid4/5/6 set";
			r = -EPERM;
			goto bad;
		}

		/* Out-of-place space has to be available to allow for a reshape unless raid1! */
		if (reshape_sectors || FUNC30(rs)) {
			/*
			  * We can only prepare for a reshape here, because the
			  * raid set needs to run to provide the repective reshape
			  * check functions via its MD personality instance.
			  *
			  * So do the reshape check after md_run() succeeded.
			  */
			r = FUNC35(rs);
			if (r)
				goto bad;

			/* Reshaping ain't recovery, so disable recovery */
			FUNC41(rs, MaxSector);
		}
		FUNC37(rs);
	} else {
		/* May not set recovery when a device rebuild is requested */
		if (FUNC46(__CTR_FLAG_REBUILD, &rs->ctr_flags)) {
			FUNC41(rs, MaxSector);
			FUNC44(RT_FLAG_UPDATE_SBS, &rs->runtime_flags);
		} else
			FUNC41(rs, FUNC46(__CTR_FLAG_SYNC, &rs->ctr_flags) ?
					      0 : (resize ? calculated_dev_sectors : MaxSector));
		FUNC37(rs);
	}

	/* If constructor requested it, change data and new_data offsets */
	r = FUNC25(rs);
	if (r)
		goto bad;

	/* Start raid set read-only and assumed clean to change in raid_resume() */
	rs->md.ro = 1;
	rs->md.in_sync = 1;

	/* Keep array frozen */
	FUNC44(MD_RECOVERY_FROZEN, &rs->md.recovery);

	/* Has to be held on running the array */
	FUNC17(&rs->md);
	r = FUNC14(&rs->md);
	rs->md.in_sync = 0; /* Assume already marked dirty */
	if (r) {
		ti->error = "Failed to run raid array";
		FUNC19(&rs->md);
		goto bad;
	}

	r = FUNC15(&rs->md);

	if (r) {
		ti->error = "Failed to start raid array";
		FUNC19(&rs->md);
		goto bad_md_start;
	}

	rs->callbacks.congested_fn = raid_is_congested;
	FUNC12(ti->table, &rs->callbacks);

	/* If raid4/5/6 journal mode explicitly requested (only possible with journal dev) -> set it */
	if (FUNC46(__CTR_FLAG_JOURNAL_MODE, &rs->ctr_flags)) {
		r = FUNC22(&rs->md, rs->journal_dev.mode);
		if (r) {
			ti->error = "Failed to set raid4/5/6 journal mode";
			FUNC19(&rs->md);
			goto bad_journal_mode_set;
		}
	}

	FUNC18(&rs->md);
	FUNC44(RT_FLAG_RS_SUSPENDED, &rs->runtime_flags);

	/* Try to adjust the raid4/5/6 stripe cache size to the stripe size */
	if (FUNC31(rs)) {
		r = FUNC40(rs);
		if (r)
			goto bad_stripe_cache;
	}

	/* Now do an early reshape check */
	if (FUNC46(RT_FLAG_RESHAPE_RS, &rs->runtime_flags)) {
		r = FUNC26(rs);
		if (r)
			goto bad_check_reshape;

		/* Restore new, ctr requested layout to perform check */
		FUNC29(rs, &rs_layout);

		if (rs->md.pers->start_reshape) {
			r = rs->md.pers->check_reshape(&rs->md);
			if (r) {
				ti->error = "Reshape check failed";
				goto bad_check_reshape;
			}
		}
	}

	/* Disable/enable discard support on raid set. */
	FUNC7(rs);

	FUNC19(&rs->md);
	return 0;

bad_md_start:
bad_journal_mode_set:
bad_stripe_cache:
bad_check_reshape:
	FUNC16(&rs->md);
bad:
	FUNC24(rs);

	return r;
}