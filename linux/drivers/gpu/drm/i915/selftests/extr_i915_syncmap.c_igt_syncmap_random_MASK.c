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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct i915_syncmap {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctx ; 
 int FUNC3 (struct i915_syncmap*,int) ; 
 int /*<<< orphan*/  end_time ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_syncmap**) ; 
 int FUNC6 (struct i915_syncmap**,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (struct i915_syncmap**,int /*<<< orphan*/ ,scalar_t__) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prng ; 
 int FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,unsigned long) ; 

__attribute__((used)) static int FUNC13(void *arg)
{
	FUNC0(prng);
	FUNC1(end_time);
	struct i915_syncmap *sync;
	unsigned long count, phase, i;
	u32 seqno;
	int err;

	FUNC5(&sync);

	/*
	 * Having tried to test the individual operations within i915_syncmap,
	 * run a smoketest exploring the entire u64 space with random
	 * insertions.
	 */

	count = 0;
	phase = jiffies + HZ/100 + 1;
	do {
		u64 context = FUNC4(&prng);

		err = FUNC7(&sync, context, 0);
		if (err)
			goto out;

		count++;
	} while (!FUNC12(jiffies, phase));
	seqno = 0;

	phase = 0;
	do {
		FUNC0(ctx);
		u32 last_seqno = seqno;
		bool expect;

		seqno = FUNC10(&prng);
		expect = FUNC11(last_seqno, seqno);

		for (i = 0; i < count; i++) {
			u64 context = FUNC4(&ctx);

			if (FUNC6(&sync, context, seqno) != expect) {
				FUNC9("context=%llu, last=%u this=%u did not match expectation (%d)\n",
				       context, last_seqno, seqno, expect);
				err = -EINVAL;
				goto out;
			}

			err = FUNC7(&sync, context, seqno);
			if (err)
				goto out;
		}

		phase++;
	} while (!FUNC2(end_time, NULL));
	FUNC8("Completed %lu passes, each of %lu contexts\n", phase, count);
out:
	return FUNC3(sync, err);
}