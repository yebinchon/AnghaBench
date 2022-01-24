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
struct selector {int /*<<< orphan*/  lock; int /*<<< orphan*/  valid_paths; } ;
struct path_selector {struct selector* context; } ;
struct path_info {unsigned int repeat_count; int /*<<< orphan*/  list; struct dm_path* path; } ;
struct dm_path {struct path_info* pscontext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int RR_MIN_IO ; 
 struct path_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (char*,char*,unsigned int*,char*) ; 

__attribute__((used)) static int FUNC6(struct path_selector *ps, struct dm_path *path,
		       int argc, char **argv, char **error)
{
	struct selector *s = ps->context;
	struct path_info *pi;
	unsigned repeat_count = RR_MIN_IO;
	char dummy;
	unsigned long flags;

	if (argc > 1) {
		*error = "round-robin ps: incorrect number of arguments";
		return -EINVAL;
	}

	/* First path argument is number of I/Os before switching path */
	if ((argc == 1) && (FUNC5(argv[0], "%u%c", &repeat_count, &dummy) != 1)) {
		*error = "round-robin ps: invalid repeat count";
		return -EINVAL;
	}

	if (repeat_count > 1) {
		FUNC0("repeat_count > 1 is deprecated, using 1 instead");
		repeat_count = 1;
	}

	/* allocate the path */
	pi = FUNC1(sizeof(*pi), GFP_KERNEL);
	if (!pi) {
		*error = "round-robin ps: Error allocating path context";
		return -ENOMEM;
	}

	pi->path = path;
	pi->repeat_count = repeat_count;

	path->pscontext = pi;

	FUNC3(&s->lock, flags);
	FUNC2(&pi->list, &s->valid_paths);
	FUNC4(&s->lock, flags);

	return 0;
}