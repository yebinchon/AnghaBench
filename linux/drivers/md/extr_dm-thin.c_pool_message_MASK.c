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
struct pool_c {struct pool* pool; } ;
struct pool {int /*<<< orphan*/  pool_md; } ;
struct dm_target {struct pool_c* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ PM_OUT_OF_METADATA_SPACE ; 
 int /*<<< orphan*/  FUNC2 (struct pool*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pool*) ; 
 int FUNC5 (unsigned int,char**,struct pool*) ; 
 int FUNC6 (unsigned int,char**,struct pool*) ; 
 int FUNC7 (unsigned int,char**,struct pool*) ; 
 int FUNC8 (unsigned int,char**,struct pool*) ; 
 int FUNC9 (unsigned int,char**,struct pool*) ; 
 int FUNC10 (unsigned int,char**,struct pool*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static int FUNC12(struct dm_target *ti, unsigned argc, char **argv,
			char *result, unsigned maxlen)
{
	int r = -EINVAL;
	struct pool_c *pt = ti->private;
	struct pool *pool = pt->pool;

	if (FUNC4(pool) >= PM_OUT_OF_METADATA_SPACE) {
		FUNC0("%s: unable to service pool target messages in READ_ONLY or FAIL mode",
		      FUNC3(pool->pool_md));
		return -EOPNOTSUPP;
	}

	if (!FUNC11(argv[0], "create_thin"))
		r = FUNC6(argc, argv, pool);

	else if (!FUNC11(argv[0], "create_snap"))
		r = FUNC5(argc, argv, pool);

	else if (!FUNC11(argv[0], "delete"))
		r = FUNC7(argc, argv, pool);

	else if (!FUNC11(argv[0], "set_transaction_id"))
		r = FUNC10(argc, argv, pool);

	else if (!FUNC11(argv[0], "reserve_metadata_snap"))
		r = FUNC9(argc, argv, pool);

	else if (!FUNC11(argv[0], "release_metadata_snap"))
		r = FUNC8(argc, argv, pool);

	else
		FUNC1("Unrecognised thin pool target message received: %s", argv[0]);

	if (!r)
		(void) FUNC2(pool);

	return r;
}