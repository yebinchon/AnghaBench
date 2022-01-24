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
struct dm_writecache {int dummy; } ;
struct dm_target {struct dm_writecache* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int EINVAL ; 
 int FUNC1 (unsigned int,char**,struct dm_writecache*) ; 
 int FUNC2 (unsigned int,char**,struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(struct dm_target *ti, unsigned argc, char **argv,
			      char *result, unsigned maxlen)
{
	int r = -EINVAL;
	struct dm_writecache *wc = ti->private;

	if (!FUNC3(argv[0], "flush"))
		r = FUNC1(argc, argv, wc);
	else if (!FUNC3(argv[0], "flush_on_suspend"))
		r = FUNC2(argc, argv, wc);
	else
		FUNC0("unrecognised message received: %s", argv[0]);

	return r;
}