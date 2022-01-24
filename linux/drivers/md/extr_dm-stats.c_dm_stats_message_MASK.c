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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int EINVAL ; 
 int FUNC1 (struct mapped_device*,unsigned int,char**) ; 
 int FUNC2 (struct mapped_device*,unsigned int,char**,char*,unsigned int) ; 
 int FUNC3 (struct mapped_device*,unsigned int,char**) ; 
 int FUNC4 (struct mapped_device*,unsigned int,char**,char*,unsigned int) ; 
 int FUNC5 (struct mapped_device*,unsigned int,char**,int,char*,unsigned int) ; 
 int FUNC6 (struct mapped_device*,unsigned int,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

int FUNC8(struct mapped_device *md, unsigned argc, char **argv,
		     char *result, unsigned maxlen)
{
	int r;

	/* All messages here must start with '@' */
	if (!FUNC7(argv[0], "@stats_create"))
		r = FUNC2(md, argc, argv, result, maxlen);
	else if (!FUNC7(argv[0], "@stats_delete"))
		r = FUNC3(md, argc, argv);
	else if (!FUNC7(argv[0], "@stats_clear"))
		r = FUNC1(md, argc, argv);
	else if (!FUNC7(argv[0], "@stats_list"))
		r = FUNC4(md, argc, argv, result, maxlen);
	else if (!FUNC7(argv[0], "@stats_print"))
		r = FUNC5(md, argc, argv, false, result, maxlen);
	else if (!FUNC7(argv[0], "@stats_print_clear"))
		r = FUNC5(md, argc, argv, true, result, maxlen);
	else if (!FUNC7(argv[0], "@stats_set_aux"))
		r = FUNC6(md, argc, argv);
	else
		return 2; /* this wasn't a stats message */

	if (r == -EINVAL)
		FUNC0("Invalid parameters for message %s", argv[0]);

	return r;
}