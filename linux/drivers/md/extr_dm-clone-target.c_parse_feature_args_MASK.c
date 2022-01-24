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
struct dm_target {char* error; } ;
struct dm_arg_set {int /*<<< orphan*/  argc; } ;
struct dm_arg {int max; char* error; int /*<<< orphan*/  min; } ;
struct clone {int /*<<< orphan*/  flags; struct dm_target* ti; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CLONE_DISCARD_PASSDOWN ; 
 int /*<<< orphan*/  DM_CLONE_HYDRATION_ENABLED ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dm_arg const*,struct dm_arg_set*,unsigned int*,char**) ; 
 char* FUNC2 (struct dm_arg_set*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(struct dm_arg_set *as, struct clone *clone)
{
	int r;
	unsigned int argc;
	const char *arg_name;
	struct dm_target *ti = clone->ti;

	const struct dm_arg args = {
		.min = 0,
		.max = 2,
		.error = "Invalid number of feature arguments"
	};

	/* No feature arguments supplied */
	if (!as->argc)
		return 0;

	r = FUNC1(&args, as, &argc, &ti->error);
	if (r)
		return r;

	while (argc) {
		arg_name = FUNC2(as);
		argc--;

		if (!FUNC3(arg_name, "no_hydration")) {
			FUNC0(DM_CLONE_HYDRATION_ENABLED, &clone->flags);
		} else if (!FUNC3(arg_name, "no_discard_passdown")) {
			FUNC0(DM_CLONE_DISCARD_PASSDOWN, &clone->flags);
		} else {
			ti->error = "Invalid feature argument";
			return -EINVAL;
		}
	}

	return 0;
}