#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct btree {TYPE_1__* c; int /*<<< orphan*/  key; } ;
struct bkey {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bucket_lock; int /*<<< orphan*/  prio_blocked; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bkey*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct bkey*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZERO_KEY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bkey*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bkey*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct btree *b, struct bkey *k)
{
	unsigned int i;

	FUNC8(&b->c->bucket_lock);

	FUNC4(&b->c->prio_blocked);

	FUNC6(k, &b->key);
	FUNC7(k, &ZERO_KEY);

	for (i = 0; i < FUNC0(k); i++)
		FUNC3(k, i,
			    FUNC5(FUNC2(b->c, &b->key, i),
					FUNC1(b->c, &b->key, i)));

	FUNC9(&b->c->bucket_lock);
}