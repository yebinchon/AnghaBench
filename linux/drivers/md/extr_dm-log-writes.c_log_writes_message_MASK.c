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
struct log_writes_c {int dummy; } ;
struct dm_target {struct log_writes_c* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int FUNC1 (struct log_writes_c*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(struct dm_target *ti, unsigned argc, char **argv,
			      char *result, unsigned maxlen)
{
	int r = -EINVAL;
	struct log_writes_c *lc = ti->private;

	if (argc != 2) {
		FUNC0("Invalid log-writes message arguments, expect 2 arguments, got %d", argc);
		return r;
	}

	if (!FUNC2(argv[0], "mark"))
		r = FUNC1(lc, argv[1]);
	else
		FUNC0("Unrecognised log writes target message received: %s", argv[0]);

	return r;
}