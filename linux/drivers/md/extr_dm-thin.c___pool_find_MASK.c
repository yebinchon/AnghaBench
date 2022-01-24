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
struct pool {struct block_device* md_dev; struct mapped_device* pool_md; } ;
struct mapped_device {int dummy; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct pool* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pool*) ; 
 struct pool* FUNC2 (struct mapped_device*) ; 
 struct pool* FUNC3 (struct block_device*) ; 
 struct pool* FUNC4 (struct mapped_device*,struct block_device*,unsigned long,int,char**) ; 

__attribute__((used)) static struct pool *FUNC5(struct mapped_device *pool_md,
				struct block_device *metadata_dev,
				unsigned long block_size, int read_only,
				char **error, int *created)
{
	struct pool *pool = FUNC3(metadata_dev);

	if (pool) {
		if (pool->pool_md != pool_md) {
			*error = "metadata device already in use by a pool";
			return FUNC0(-EBUSY);
		}
		FUNC1(pool);

	} else {
		pool = FUNC2(pool_md);
		if (pool) {
			if (pool->md_dev != metadata_dev) {
				*error = "different pool cannot replace a pool";
				return FUNC0(-EINVAL);
			}
			FUNC1(pool);

		} else {
			pool = FUNC4(pool_md, metadata_dev, block_size, read_only, error);
			*created = 1;
		}
	}

	return pool;
}