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
struct dm_target {struct clone* private; } ;
struct clone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct clone*) ; 
 int /*<<< orphan*/  FUNC2 (struct clone*) ; 
 int /*<<< orphan*/  FUNC3 (struct clone*) ; 
 scalar_t__ FUNC4 (char*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct clone*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct clone*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static int FUNC8(struct dm_target *ti, unsigned int argc, char **argv,
			 char *result, unsigned int maxlen)
{
	struct clone *clone = ti->private;
	unsigned int value;

	if (!argc)
		return -EINVAL;

	if (!FUNC7(argv[0], "enable_hydration")) {
		FUNC3(clone);
		return 0;
	}

	if (!FUNC7(argv[0], "disable_hydration")) {
		FUNC2(clone);
		return 0;
	}

	if (argc != 2)
		return -EINVAL;

	if (!FUNC7(argv[0], "hydration_threshold")) {
		if (FUNC4(argv[1], 10, &value))
			return -EINVAL;

		FUNC6(clone, value);

		return 0;
	}

	if (!FUNC7(argv[0], "hydration_batch_size")) {
		if (FUNC4(argv[1], 10, &value))
			return -EINVAL;

		FUNC5(clone, value);

		return 0;
	}

	FUNC0("%s: Unsupported message `%s'", FUNC1(clone), argv[0]);
	return -EINVAL;
}