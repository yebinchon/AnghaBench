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
struct path_info {unsigned int repeat_count; unsigned int relative_throughput; int /*<<< orphan*/  list; int /*<<< orphan*/  in_flight_size; struct dm_path* path; } ;
struct dm_path {struct path_info* pscontext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int ST_MAX_RELATIVE_THROUGHPUT ; 
 unsigned int ST_MIN_IO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct path_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (char*,char*,unsigned int*,char*) ; 

__attribute__((used)) static int FUNC7(struct path_selector *ps, struct dm_path *path,
		       int argc, char **argv, char **error)
{
	struct selector *s = ps->context;
	struct path_info *pi;
	unsigned repeat_count = ST_MIN_IO;
	unsigned relative_throughput = 1;
	char dummy;
	unsigned long flags;

	/*
	 * Arguments: [<repeat_count> [<relative_throughput>]]
	 * 	<repeat_count>: The number of I/Os before switching path.
	 * 			If not given, default (ST_MIN_IO) is used.
	 * 	<relative_throughput>: The relative throughput value of
	 *			the path among all paths in the path-group.
	 * 			The valid range: 0-<ST_MAX_RELATIVE_THROUGHPUT>
	 *			If not given, minimum value '1' is used.
	 *			If '0' is given, the path isn't selected while
	 * 			other paths having a positive value are
	 * 			available.
	 */
	if (argc > 2) {
		*error = "service-time ps: incorrect number of arguments";
		return -EINVAL;
	}

	if (argc && (FUNC6(argv[0], "%u%c", &repeat_count, &dummy) != 1)) {
		*error = "service-time ps: invalid repeat count";
		return -EINVAL;
	}

	if (repeat_count > 1) {
		FUNC0("repeat_count > 1 is deprecated, using 1 instead");
		repeat_count = 1;
	}

	if ((argc == 2) &&
	    (FUNC6(argv[1], "%u%c", &relative_throughput, &dummy) != 1 ||
	     relative_throughput > ST_MAX_RELATIVE_THROUGHPUT)) {
		*error = "service-time ps: invalid relative_throughput value";
		return -EINVAL;
	}

	/* allocate the path */
	pi = FUNC2(sizeof(*pi), GFP_KERNEL);
	if (!pi) {
		*error = "service-time ps: Error allocating path context";
		return -ENOMEM;
	}

	pi->path = path;
	pi->repeat_count = repeat_count;
	pi->relative_throughput = relative_throughput;
	FUNC1(&pi->in_flight_size, 0);

	path->pscontext = pi;

	FUNC4(&s->lock, flags);
	FUNC3(&pi->list, &s->valid_paths);
	FUNC5(&s->lock, flags);

	return 0;
}