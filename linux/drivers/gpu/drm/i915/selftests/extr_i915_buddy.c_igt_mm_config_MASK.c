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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  random_seed; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SZ_8G ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ i915_selftest ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prng ; 

__attribute__((used)) static void FUNC7(u64 *size, u64 *chunk_size)
{
	FUNC1(prng);
	u64 s, ms;

	/* Nothing fancy, just try to get an interesting bit pattern */

	FUNC5(&prng, i915_selftest.random_seed);

	s = FUNC2(&prng) & (SZ_8G - 1);
	ms = FUNC0(12 + (FUNC6(&prng) % FUNC3(s >> 12)));
	s = FUNC4(s & -ms, ms);

	*chunk_size = ms;
	*size = s;
}