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
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mapped_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mapped_device *md,
			      unsigned argc, char **argv,
			      char *result, unsigned maxlen)
{
	int r;
	const char *program = NULL;

	if (argc < 1 || argc > 2)
		return -EINVAL;

	if (argc > 1) {
		program = FUNC3(argv[1], GFP_KERNEL);
		if (!program)
			return -ENOMEM;
	}

	r = FUNC1(FUNC0(md), program, result, maxlen);

	FUNC2(program);

	return r;
}