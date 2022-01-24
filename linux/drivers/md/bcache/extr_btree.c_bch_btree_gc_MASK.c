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
typedef  int /*<<< orphan*/  uint64_t ;
struct gc_stat {int key_bytes; int data; } ;
struct closure {int dummy; } ;
struct cache_set {int /*<<< orphan*/  gc_stats; int /*<<< orphan*/  btree_gc_time; int /*<<< orphan*/  flags; } ;
struct btree_op {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_SET_IO_DISABLE ; 
 int EAGAIN ; 
 int /*<<< orphan*/  GC_SLEEP_MS ; 
 int /*<<< orphan*/  SHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct cache_set*) ; 
 int /*<<< orphan*/  FUNC1 (struct btree_op*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_set*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_set*,struct gc_stat*) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_set*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct cache_set*,struct btree_op*,struct closure*,struct gc_stat*) ; 
 int /*<<< orphan*/  FUNC7 (struct closure*) ; 
 int /*<<< orphan*/  FUNC8 (struct closure*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  gc_root ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct gc_stat*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct gc_stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct cache_set*) ; 
 int /*<<< orphan*/  FUNC18 (struct cache_set*) ; 
 int /*<<< orphan*/  FUNC19 (struct cache_set*) ; 

__attribute__((used)) static void FUNC20(struct cache_set *c)
{
	int ret;
	struct gc_stat stats;
	struct closure writes;
	struct btree_op op;
	uint64_t start_time = FUNC10();

	FUNC18(c);

	FUNC12(&stats, 0, sizeof(struct gc_stat));
	FUNC7(&writes);
	FUNC1(&op, SHRT_MAX);

	FUNC5(c);

	/* if CACHE_SET_IO_DISABLE set, gc thread should stop too */
	do {
		ret = FUNC6(gc_root, c, &op, &writes, &stats);
		FUNC8(&writes);
		FUNC9();

		if (ret == -EAGAIN)
			FUNC15(FUNC13
						       (GC_SLEEP_MS));
		else if (ret)
			FUNC14("gc failed!");
	} while (ret && !FUNC16(CACHE_SET_IO_DISABLE, &c->flags));

	FUNC0(c);
	FUNC19(c);

	FUNC3(&c->btree_gc_time, start_time);

	stats.key_bytes *= sizeof(uint64_t);
	stats.data	<<= 9;
	FUNC4(c, &stats);
	FUNC11(&c->gc_stats, &stats, sizeof(struct gc_stat));

	FUNC17(c);

	FUNC2(c);
}