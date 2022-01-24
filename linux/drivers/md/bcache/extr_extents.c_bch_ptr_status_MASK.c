#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ bucket_size; } ;
struct cache_set {TYPE_1__ sb; } ;
struct TYPE_4__ {size_t first_bucket; size_t nbuckets; } ;
struct cache {TYPE_2__ sb; } ;
struct bkey {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bkey const*) ; 
 scalar_t__ FUNC1 (struct bkey const*) ; 
 size_t FUNC2 (struct cache_set*,struct bkey const*,unsigned int) ; 
 struct cache* FUNC3 (struct cache_set*,struct bkey const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct bkey const*,unsigned int) ; 
 int /*<<< orphan*/  ZERO_KEY ; 
 int /*<<< orphan*/  FUNC5 (struct bkey const*,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (struct cache_set*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct cache_set*,struct bkey const*,unsigned int) ; 
 scalar_t__ FUNC8 (struct cache_set*,struct bkey const*,unsigned int) ; 

__attribute__((used)) static const char *FUNC9(struct cache_set *c, const struct bkey *k)
{
	unsigned int i;

	for (i = 0; i < FUNC0(k); i++)
		if (FUNC7(c, k, i)) {
			struct cache *ca = FUNC3(c, k, i);
			size_t bucket = FUNC2(c, k, i);
			size_t r = FUNC6(c, FUNC4(k, i));

			if (FUNC1(k) + r > c->sb.bucket_size)
				return "bad, length too big";
			if (bucket <  ca->sb.first_bucket)
				return "bad, short offset";
			if (bucket >= ca->sb.nbuckets)
				return "bad, offset past end of device";
			if (FUNC8(c, k, i))
				return "stale";
		}

	if (!FUNC5(k, &ZERO_KEY))
		return "bad, null key";
	if (!FUNC0(k))
		return "bad, no pointers";
	if (!FUNC1(k))
		return "zeroed key";
	return "";
}