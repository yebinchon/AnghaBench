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
struct gma_clock_t {int /*<<< orphan*/  p2; int /*<<< orphan*/  p1; int /*<<< orphan*/  n; int /*<<< orphan*/  m2; int /*<<< orphan*/  m1; int /*<<< orphan*/  m; int /*<<< orphan*/  dot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct gma_clock_t *clock)
{
	FUNC0("dotclock=%d,  m=%d, m1=%d, m2=%d, n=%d, p1=%d, p2=%d\n",
			 clock->dot, clock->m, clock->m1, clock->m2, clock->n,
			 clock->p1, clock->p2);
}