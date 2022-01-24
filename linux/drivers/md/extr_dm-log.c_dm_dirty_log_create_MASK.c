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
struct dm_target {int dummy; } ;
struct dm_dirty_log_type {scalar_t__ (* ctr ) (struct dm_dirty_log*,struct dm_target*,unsigned int,char**) ;} ;
struct dm_dirty_log {int (* flush_callback_fn ) (struct dm_target*) ;struct dm_dirty_log_type* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dm_dirty_log_type* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_dirty_log*) ; 
 struct dm_dirty_log* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_dirty_log_type*) ; 
 scalar_t__ FUNC4 (struct dm_dirty_log*,struct dm_target*,unsigned int,char**) ; 

struct dm_dirty_log *FUNC5(const char *type_name,
			struct dm_target *ti,
			int (*flush_callback_fn)(struct dm_target *ti),
			unsigned int argc, char **argv)
{
	struct dm_dirty_log_type *type;
	struct dm_dirty_log *log;

	log = FUNC2(sizeof(*log), GFP_KERNEL);
	if (!log)
		return NULL;

	type = FUNC0(type_name);
	if (!type) {
		FUNC1(log);
		return NULL;
	}

	log->flush_callback_fn = flush_callback_fn;
	log->type = type;
	if (type->ctr(log, ti, argc, argv)) {
		FUNC1(log);
		FUNC3(type);
		return NULL;
	}

	return log;
}