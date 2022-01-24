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
struct open_bucket {int /*<<< orphan*/  list; } ;
struct cache_set {int /*<<< orphan*/  data_buckets; int /*<<< orphan*/  data_bucket_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPEN_BUCKETS ; 
 struct open_bucket* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct cache_set *c)
{
	int i;

	FUNC2(&c->data_bucket_lock);

	for (i = 0; i < MAX_OPEN_BUCKETS; i++) {
		struct open_bucket *b = FUNC0(sizeof(*b), GFP_KERNEL);

		if (!b)
			return -ENOMEM;

		FUNC1(&b->list, &c->data_buckets);
	}

	return 0;
}