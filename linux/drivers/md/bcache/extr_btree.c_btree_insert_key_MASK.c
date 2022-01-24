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
struct btree {int /*<<< orphan*/  keys; int /*<<< orphan*/  key; } ;
struct bkey {int dummy; } ;

/* Variables and functions */
 unsigned int BTREE_INSERT_STATUS_NO_INSERT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,struct bkey*,struct bkey*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int,char*) ; 
 scalar_t__ FUNC3 (struct bkey*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct btree*,struct bkey*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static bool FUNC5(struct btree *b, struct bkey *k,
			     struct bkey *replace_key)
{
	unsigned int status;

	FUNC0(FUNC3(k, &b->key) > 0);

	status = FUNC1(&b->keys, k, replace_key);
	if (status != BTREE_INSERT_STATUS_NO_INSERT) {
		FUNC2(&b->keys, "%u for %s", status,
			       replace_key ? "replace" : "insert");

		FUNC4(b, k, replace_key != NULL,
					      status);
		return true;
	} else
		return false;
}