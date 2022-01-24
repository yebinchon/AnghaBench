#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mirror_set {unsigned int nr_mirrors; int /*<<< orphan*/  io_client; int /*<<< orphan*/  rh; int /*<<< orphan*/  nr_regions; struct dm_target* ti; int /*<<< orphan*/  default_mirror; int /*<<< orphan*/  suspend; scalar_t__ leg_failure; scalar_t__ log_failure; scalar_t__ in_sync; int /*<<< orphan*/  holds; int /*<<< orphan*/  failures; int /*<<< orphan*/  writes; int /*<<< orphan*/  reads; int /*<<< orphan*/  lock; } ;
struct dm_target {char* error; int /*<<< orphan*/  begin; int /*<<< orphan*/  len; } ;
struct dm_dirty_log {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_MIRROR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_RECOVERY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dispatch_bios ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mirror_set*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_dirty_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mirror_set*) ; 
 struct mirror_set* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mirror ; 
 struct mirror_set* ms ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  wakeup_all_recovery_waiters ; 
 int /*<<< orphan*/  wakeup_mirrord ; 

__attribute__((used)) static struct mirror_set *FUNC11(unsigned int nr_mirrors,
					uint32_t region_size,
					struct dm_target *ti,
					struct dm_dirty_log *dl)
{
	struct mirror_set *ms =
		FUNC8(FUNC10(ms, mirror, nr_mirrors), GFP_KERNEL);

	if (!ms) {
		ti->error = "Cannot allocate mirror context";
		return NULL;
	}

	FUNC9(&ms->lock);
	FUNC2(&ms->reads);
	FUNC2(&ms->writes);
	FUNC2(&ms->failures);
	FUNC2(&ms->holds);

	ms->ti = ti;
	ms->nr_mirrors = nr_mirrors;
	ms->nr_regions = FUNC6(ti->len, region_size);
	ms->in_sync = 0;
	ms->log_failure = 0;
	ms->leg_failure = 0;
	FUNC1(&ms->suspend, 0);
	FUNC1(&ms->default_mirror, DEFAULT_MIRROR);

	ms->io_client = FUNC3();
	if (FUNC0(ms->io_client)) {
		ti->error = "Error creating dm_io client";
		FUNC7(ms);
 		return NULL;
	}

	ms->rh = FUNC5(ms, dispatch_bios, wakeup_mirrord,
				       wakeup_all_recovery_waiters,
				       ms->ti->begin, MAX_RECOVERY,
				       dl, region_size, ms->nr_regions);
	if (FUNC0(ms->rh)) {
		ti->error = "Error creating dirty region hash";
		FUNC4(ms->io_client);
		FUNC7(ms);
		return NULL;
	}

	return ms;
}