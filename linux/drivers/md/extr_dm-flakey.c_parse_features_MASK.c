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
struct flakey_c {scalar_t__ corrupt_bio_rw; int /*<<< orphan*/  flags; int /*<<< orphan*/  corrupt_bio_flags; int /*<<< orphan*/  corrupt_bio_value; int /*<<< orphan*/  corrupt_bio_byte; } ;
struct dm_target {char* error; } ;
struct dm_arg_set {int /*<<< orphan*/  argc; } ;
struct dm_arg {int member_0; int member_1; char* member_2; } ;

/* Variables and functions */
 int /*<<< orphan*/  DROP_WRITES ; 
 int EINVAL ; 
 int /*<<< orphan*/  ERROR_WRITES ; 
 scalar_t__ READ ; 
#define  UINT_MAX 128 
 scalar_t__ WRITE ; 
 int FUNC0 (struct dm_arg const*,struct dm_arg_set*,int /*<<< orphan*/ *,char**) ; 
 int FUNC1 (struct dm_arg const*,struct dm_arg_set*,unsigned int*,char**) ; 
 char* FUNC2 (struct dm_arg_set*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dm_arg_set *as, struct flakey_c *fc,
			  struct dm_target *ti)
{
	int r;
	unsigned argc;
	const char *arg_name;

	static const struct dm_arg _args[] = {
		{0, 6, "Invalid number of feature args"},
		{1, UINT_MAX, "Invalid corrupt bio byte"},
		{0, 255, "Invalid corrupt value to write into bio byte (0-255)"},
		{0, UINT_MAX, "Invalid corrupt bio flags mask"},
	};

	/* No feature arguments supplied. */
	if (!as->argc)
		return 0;

	r = FUNC1(_args, as, &argc, &ti->error);
	if (r)
		return r;

	while (argc) {
		arg_name = FUNC2(as);
		argc--;

		if (!arg_name) {
			ti->error = "Insufficient feature arguments";
			return -EINVAL;
		}

		/*
		 * drop_writes
		 */
		if (!FUNC3(arg_name, "drop_writes")) {
			if (FUNC4(DROP_WRITES, &fc->flags)) {
				ti->error = "Feature drop_writes duplicated";
				return -EINVAL;
			} else if (FUNC5(ERROR_WRITES, &fc->flags)) {
				ti->error = "Feature drop_writes conflicts with feature error_writes";
				return -EINVAL;
			}

			continue;
		}

		/*
		 * error_writes
		 */
		if (!FUNC3(arg_name, "error_writes")) {
			if (FUNC4(ERROR_WRITES, &fc->flags)) {
				ti->error = "Feature error_writes duplicated";
				return -EINVAL;

			} else if (FUNC5(DROP_WRITES, &fc->flags)) {
				ti->error = "Feature error_writes conflicts with feature drop_writes";
				return -EINVAL;
			}

			continue;
		}

		/*
		 * corrupt_bio_byte <Nth_byte> <direction> <value> <bio_flags>
		 */
		if (!FUNC3(arg_name, "corrupt_bio_byte")) {
			if (!argc) {
				ti->error = "Feature corrupt_bio_byte requires parameters";
				return -EINVAL;
			}

			r = FUNC0(_args + 1, as, &fc->corrupt_bio_byte, &ti->error);
			if (r)
				return r;
			argc--;

			/*
			 * Direction r or w?
			 */
			arg_name = FUNC2(as);
			if (!FUNC3(arg_name, "w"))
				fc->corrupt_bio_rw = WRITE;
			else if (!FUNC3(arg_name, "r"))
				fc->corrupt_bio_rw = READ;
			else {
				ti->error = "Invalid corrupt bio direction (r or w)";
				return -EINVAL;
			}
			argc--;

			/*
			 * Value of byte (0-255) to write in place of correct one.
			 */
			r = FUNC0(_args + 2, as, &fc->corrupt_bio_value, &ti->error);
			if (r)
				return r;
			argc--;

			/*
			 * Only corrupt bios with these flags set.
			 */
			r = FUNC0(_args + 3, as, &fc->corrupt_bio_flags, &ti->error);
			if (r)
				return r;
			argc--;

			continue;
		}

		ti->error = "Unrecognised flakey feature requested";
		return -EINVAL;
	}

	if (FUNC5(DROP_WRITES, &fc->flags) && (fc->corrupt_bio_rw == WRITE)) {
		ti->error = "drop_writes is incompatible with corrupt_bio_byte with the WRITE flag set";
		return -EINVAL;

	} else if (FUNC5(ERROR_WRITES, &fc->flags) && (fc->corrupt_bio_rw == WRITE)) {
		ti->error = "error_writes is incompatible with corrupt_bio_byte with the WRITE flag set";
		return -EINVAL;
	}

	return 0;
}