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
struct mapped_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int FUNC1 (struct mapped_device*) ; 
 int FUNC2 (struct mapped_device*,unsigned int,char**,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(struct mapped_device *md, unsigned argc, char **argv,
			  char *result, unsigned maxlen)
{
	int r;

	if (**argv != '@')
		return 2; /* no '@' prefix, deliver to target */

	if (!FUNC3(argv[0], "@cancel_deferred_remove")) {
		if (argc != 1) {
			FUNC0("Invalid arguments for @cancel_deferred_remove");
			return -EINVAL;
		}
		return FUNC1(md);
	}

	r = FUNC2(md, argc, argv, result, maxlen);
	if (r < 2)
		return r;

	FUNC0("Unsupported message sent to DM core: %s", argv[0]);
	return -EINVAL;
}