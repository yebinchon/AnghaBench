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
struct keylist {int /*<<< orphan*/  top; } ;
struct btree_op {int dummy; } ;
struct btree {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC1 (struct btree*,struct btree_op*,struct keylist*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btree*) ; 
 int /*<<< orphan*/  FUNC3 (struct keylist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC5 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC6 (struct keylist*) ; 
 scalar_t__ FUNC7 (struct btree*,int /*<<< orphan*/ *) ; 
 struct btree* FUNC8 (struct btree*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct btree*) ; 
 int /*<<< orphan*/  FUNC10 (struct btree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,struct btree*) ; 

__attribute__((used)) static int FUNC12(struct btree *b, struct btree_op *op,
				 struct btree *replace)
{
	struct keylist keys;
	struct btree *n;

	if (FUNC7(b, NULL))
		return 0;

	n = FUNC8(replace, NULL);

	/* recheck reserve after allocating replacement node */
	if (FUNC7(b, NULL)) {
		FUNC9(n);
		FUNC11(true, n);
		return 0;
	}

	FUNC2(n);

	FUNC5(&keys);
	FUNC3(&keys, &n->key);

	FUNC10(replace, keys.top);
	FUNC6(&keys);

	FUNC1(b, op, &keys, NULL, NULL);
	FUNC0(!FUNC4(&keys));

	FUNC9(replace);
	FUNC11(true, n);

	/* Invalidated our iterator */
	return -EINTR;
}