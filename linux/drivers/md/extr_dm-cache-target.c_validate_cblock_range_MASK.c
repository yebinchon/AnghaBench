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
typedef  scalar_t__ uint64_t ;
struct cblock_range {int /*<<< orphan*/  end; int /*<<< orphan*/  begin; } ;
struct cache {int /*<<< orphan*/  cache_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cache *cache, struct cblock_range *range)
{
	uint64_t b = FUNC2(range->begin);
	uint64_t e = FUNC2(range->end);
	uint64_t n = FUNC2(cache->cache_size);

	if (b >= n) {
		FUNC0("%s: begin cblock out of range: %llu >= %llu",
		      FUNC1(cache), b, n);
		return -EINVAL;
	}

	if (e > n) {
		FUNC0("%s: end cblock out of range: %llu > %llu",
		      FUNC1(cache), e, n);
		return -EINVAL;
	}

	if (b >= e) {
		FUNC0("%s: invalid cblock range: %llu >= %llu",
		      FUNC1(cache), b, e);
		return -EINVAL;
	}

	return 0;
}