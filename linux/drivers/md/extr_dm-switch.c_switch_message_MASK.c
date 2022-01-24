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
struct switch_ctx {int dummy; } ;
struct dm_target {struct switch_ctx* private; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct switch_ctx*,unsigned int,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(struct dm_target *ti, unsigned argc, char **argv,
			  char *result, unsigned maxlen)
{
	static DEFINE_MUTEX(message_mutex);

	struct switch_ctx *sctx = ti->private;
	int r = -EINVAL;

	FUNC1(&message_mutex);

	if (!FUNC4(argv[0], "set_region_mappings"))
		r = FUNC3(sctx, argc, argv);
	else
		FUNC0("Unrecognised message received.");

	FUNC2(&message_mutex);

	return r;
}