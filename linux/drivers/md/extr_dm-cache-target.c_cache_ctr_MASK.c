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
struct dm_target {char* error; struct cache* private; } ;
struct cache_args {struct dm_target* ti; } ;
struct cache {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cache_args*,struct cache**) ; 
 int FUNC1 (struct cache*,unsigned int,char const**) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_args*) ; 
 struct cache_args* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct cache_args*,unsigned int,char**,char**) ; 

__attribute__((used)) static int FUNC6(struct dm_target *ti, unsigned argc, char **argv)
{
	int r = -EINVAL;
	struct cache_args *ca;
	struct cache *cache = NULL;

	ca = FUNC4(sizeof(*ca), GFP_KERNEL);
	if (!ca) {
		ti->error = "Error allocating memory for cache";
		return -ENOMEM;
	}
	ca->ti = ti;

	r = FUNC5(ca, argc, argv, &ti->error);
	if (r)
		goto out;

	r = FUNC0(ca, &cache);
	if (r)
		goto out;

	r = FUNC1(cache, argc - 3, (const char **)argv + 3);
	if (r) {
		FUNC2(cache);
		goto out;
	}

	ti->private = cache;
out:
	FUNC3(ca);
	return r;
}