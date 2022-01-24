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
struct btree_write {int /*<<< orphan*/ * journal; } ;
struct btree {int /*<<< orphan*/  c; int /*<<< orphan*/  work; int /*<<< orphan*/  written; int /*<<< orphan*/  write_lock; } ;
struct bset {int /*<<< orphan*/  keys; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_2__ {int /*<<< orphan*/  bio_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HZ ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btree*,int /*<<< orphan*/ *) ; 
 struct bset* FUNC4 (struct btree*) ; 
 struct btree_write* FUNC5 (struct btree*) ; 
 int /*<<< orphan*/  FUNC6 (struct btree*) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btree*) ; 
 int FUNC11 (struct bset*) ; 

__attribute__((used)) static void FUNC12(struct btree *b, atomic_t *journal_ref)
{
	struct bset *i = FUNC4(b);
	struct btree_write *w = FUNC5(b);

	FUNC8(&b->write_lock);

	FUNC0(!b->written);
	FUNC0(!i->keys);

	if (!FUNC6(b))
		FUNC9(&b->work, 30 * HZ);

	FUNC10(b);

	if (journal_ref) {
		if (w->journal &&
		    FUNC7(b->c, w->journal, journal_ref)) {
			FUNC1(w->journal);
			w->journal = NULL;
		}

		if (!w->journal) {
			w->journal = journal_ref;
			FUNC2(w->journal);
		}
	}

	/* Force write if set is too big */
	if (FUNC11(i) > PAGE_SIZE - 48 &&
	    !current->bio_list)
		FUNC3(b, NULL);
}