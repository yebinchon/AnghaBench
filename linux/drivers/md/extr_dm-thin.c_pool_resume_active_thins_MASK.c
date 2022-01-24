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
struct thin_c {int /*<<< orphan*/  thin_md; } ;
struct pool {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct thin_c* FUNC1 (struct pool*) ; 
 struct thin_c* FUNC2 (struct pool*,struct thin_c*) ; 

__attribute__((used)) static void FUNC3(struct pool *pool)
{
	struct thin_c *tc;

	/* Resume all active thin devices */
	tc = FUNC1(pool);
	while (tc) {
		FUNC0(tc->thin_md);
		tc = FUNC2(pool, tc);
	}
}