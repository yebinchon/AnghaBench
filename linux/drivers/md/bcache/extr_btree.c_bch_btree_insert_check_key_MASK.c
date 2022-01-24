#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct keylist {int dummy; } ;
struct btree_op {int lock; } ;
struct TYPE_2__ {scalar_t__* ptr; } ;
struct btree {unsigned long seq; int level; int /*<<< orphan*/  lock; TYPE_1__ key; } ;
struct bkey {int /*<<< orphan*/ * ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 int /*<<< orphan*/  PTR_CHECK_DEV ; 
 int /*<<< orphan*/  FUNC1 (struct bkey*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bkey*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct btree*,struct btree_op*,struct keylist*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct keylist*,struct bkey*) ; 
 int /*<<< orphan*/  FUNC5 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC6 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct btree*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,struct btree*) ; 

int FUNC11(struct btree *b, struct btree_op *op,
			       struct bkey *check_key)
{
	int ret = -EINTR;
	uint64_t btree_ptr = b->key.ptr[0];
	unsigned long seq = b->seq;
	struct keylist insert;
	bool upgrade = op->lock == -1;

	FUNC6(&insert);

	if (upgrade) {
		FUNC10(false, b);
		FUNC9(true, b, b->level);

		if (b->key.ptr[0] != btree_ptr ||
		    b->seq != seq + 1) {
			op->lock = b->level;
			goto out;
		}
	}

	FUNC1(check_key, 1);
	FUNC8(&check_key->ptr[0], sizeof(uint64_t));

	FUNC2(check_key, 0, PTR_CHECK_DEV);

	FUNC4(&insert, check_key);

	ret = FUNC3(b, op, &insert, NULL, NULL);

	FUNC0(!ret && !FUNC5(&insert));
out:
	if (upgrade)
		FUNC7(&b->lock);
	return ret;
}