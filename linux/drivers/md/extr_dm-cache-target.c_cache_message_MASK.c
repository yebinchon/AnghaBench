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
struct dm_target {struct cache* private; } ;
struct cache {int dummy; } ;

/* Variables and functions */
 scalar_t__ CM_READ_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 scalar_t__ FUNC2 (struct cache*) ; 
 int FUNC3 (struct cache*,unsigned int,char const**) ; 
 int FUNC4 (struct cache*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(struct dm_target *ti, unsigned argc, char **argv,
			 char *result, unsigned maxlen)
{
	struct cache *cache = ti->private;

	if (!argc)
		return -EINVAL;

	if (FUNC2(cache) >= CM_READ_ONLY) {
		FUNC0("%s: unable to service cache target messages in READ_ONLY or FAIL mode",
		      FUNC1(cache));
		return -EOPNOTSUPP;
	}

	if (!FUNC5(argv[0], "invalidate_cblocks"))
		return FUNC3(cache, argc - 1, (const char **) argv + 1);

	if (argc != 2)
		return -EINVAL;

	return FUNC4(cache, argv[0], argv[1]);
}