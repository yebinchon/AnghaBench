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
struct stats_time_cache {int dummy; } ;
struct stats_event_cache {int dummy; } ;
struct persistent_data_flag {int dummy; } ;
struct mod_stats {int dummy; } ;
struct dc {int /*<<< orphan*/  ctx; } ;
struct core_stats {unsigned int enabled; unsigned int entries; unsigned int event_entries; int index; struct core_stats* time; struct mod_stats public; scalar_t__ entry_id; scalar_t__ event_index; int /*<<< orphan*/ * events; struct dc* dc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAL_STATS_ENABLE_REGKEY ; 
 unsigned int DAL_STATS_ENABLE_REGKEY_DEFAULT ; 
 int /*<<< orphan*/  DAL_STATS_ENTRIES_REGKEY ; 
 unsigned int DAL_STATS_ENTRIES_REGKEY_DEFAULT ; 
 unsigned int DAL_STATS_ENTRIES_REGKEY_MAX ; 
 unsigned int DAL_STATS_EVENT_ENTRIES_DEFAULT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,int,struct persistent_data_flag*) ; 
 void* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct core_stats*) ; 
 struct core_stats* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct mod_stats *FUNC4(struct dc *dc)
{
	struct core_stats *core_stats = NULL;
	struct persistent_data_flag flag;
	unsigned int reg_data;
	int i = 0;

	if (dc == NULL)
		goto fail_construct;

	core_stats = FUNC3(sizeof(struct core_stats), GFP_KERNEL);

	if (core_stats == NULL)
		goto fail_construct;

	core_stats->dc = dc;

	core_stats->enabled = DAL_STATS_ENABLE_REGKEY_DEFAULT;
	if (FUNC0(dc->ctx, NULL, NULL,
			DAL_STATS_ENABLE_REGKEY,
			&reg_data, sizeof(unsigned int), &flag))
		core_stats->enabled = reg_data;

	if (core_stats->enabled) {
		core_stats->entries = DAL_STATS_ENTRIES_REGKEY_DEFAULT;
		if (FUNC0(dc->ctx, NULL, NULL,
				DAL_STATS_ENTRIES_REGKEY,
				&reg_data, sizeof(unsigned int), &flag)) {
			if (reg_data > DAL_STATS_ENTRIES_REGKEY_MAX)
				core_stats->entries = DAL_STATS_ENTRIES_REGKEY_MAX;
			else
				core_stats->entries = reg_data;
		}
		core_stats->time = FUNC1(core_stats->entries,
						sizeof(struct stats_time_cache),
						GFP_KERNEL);

		if (core_stats->time == NULL)
			goto fail_construct_time;

		core_stats->event_entries = DAL_STATS_EVENT_ENTRIES_DEFAULT;
		core_stats->events = FUNC1(core_stats->event_entries,
					     sizeof(struct stats_event_cache),
					     GFP_KERNEL);

		if (core_stats->events == NULL)
			goto fail_construct_events;

	} else {
		core_stats->entries = 0;
	}

	/* Purposely leave index 0 unused so we don't need special logic to
	 * handle calculation cases that depend on previous flip data.
	 */
	core_stats->index = 1;
	core_stats->event_index = 0;

	// Keeps track of ordering within the different stats structures
	core_stats->entry_id = 0;

	return &core_stats->public;

fail_construct_events:
	FUNC2(core_stats->time);

fail_construct_time:
	FUNC2(core_stats);

fail_construct:
	return NULL;
}