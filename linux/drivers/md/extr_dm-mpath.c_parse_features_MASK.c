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
struct multipath {int /*<<< orphan*/  queue_mode; int /*<<< orphan*/  pg_init_delay_msecs; int /*<<< orphan*/  pg_init_retries; int /*<<< orphan*/  flags; struct dm_target* ti; } ;
struct dm_target {char* error; } ;
struct dm_arg_set {int dummy; } ;
struct dm_arg {int member_0; int member_1; char* member_2; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_TYPE_BIO_BASED ; 
 int /*<<< orphan*/  DM_TYPE_REQUEST_BASED ; 
 int EINVAL ; 
 int /*<<< orphan*/  MPATHF_RETAIN_ATTACHED_HW_HANDLER ; 
 int FUNC0 (struct dm_arg const*,struct dm_arg_set*,int /*<<< orphan*/ *,char**) ; 
 int FUNC1 (struct dm_arg const*,struct dm_arg_set*,unsigned int*,char**) ; 
 char* FUNC2 (struct dm_arg_set*) ; 
 int FUNC3 (struct multipath*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(struct dm_arg_set *as, struct multipath *m)
{
	int r;
	unsigned argc;
	struct dm_target *ti = m->ti;
	const char *arg_name;

	static const struct dm_arg _args[] = {
		{0, 8, "invalid number of feature args"},
		{1, 50, "pg_init_retries must be between 1 and 50"},
		{0, 60000, "pg_init_delay_msecs must be between 0 and 60000"},
	};

	r = FUNC1(_args, as, &argc, &ti->error);
	if (r)
		return -EINVAL;

	if (!argc)
		return 0;

	do {
		arg_name = FUNC2(as);
		argc--;

		if (!FUNC5(arg_name, "queue_if_no_path")) {
			r = FUNC3(m, true, false);
			continue;
		}

		if (!FUNC5(arg_name, "retain_attached_hw_handler")) {
			FUNC4(MPATHF_RETAIN_ATTACHED_HW_HANDLER, &m->flags);
			continue;
		}

		if (!FUNC5(arg_name, "pg_init_retries") &&
		    (argc >= 1)) {
			r = FUNC0(_args + 1, as, &m->pg_init_retries, &ti->error);
			argc--;
			continue;
		}

		if (!FUNC5(arg_name, "pg_init_delay_msecs") &&
		    (argc >= 1)) {
			r = FUNC0(_args + 2, as, &m->pg_init_delay_msecs, &ti->error);
			argc--;
			continue;
		}

		if (!FUNC5(arg_name, "queue_mode") &&
		    (argc >= 1)) {
			const char *queue_mode_name = FUNC2(as);

			if (!FUNC5(queue_mode_name, "bio"))
				m->queue_mode = DM_TYPE_BIO_BASED;
			else if (!FUNC5(queue_mode_name, "rq") ||
				 !FUNC5(queue_mode_name, "mq"))
				m->queue_mode = DM_TYPE_REQUEST_BASED;
			else {
				ti->error = "Unknown 'queue_mode' requested";
				r = -EINVAL;
			}
			argc--;
			continue;
		}

		ti->error = "Unrecognised multipath feature request";
		r = -EINVAL;
	} while (argc && !r);

	return r;
}