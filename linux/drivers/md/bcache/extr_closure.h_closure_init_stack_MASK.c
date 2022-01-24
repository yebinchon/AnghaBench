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
struct closure {int /*<<< orphan*/  remaining; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSURE_REMAINING_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct closure*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct closure *cl)
{
	FUNC1(cl, 0, sizeof(struct closure));
	FUNC0(&cl->remaining, CLOSURE_REMAINING_INITIALIZER);
}