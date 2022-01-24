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
struct closure {int /*<<< orphan*/  remaining; struct closure* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSURE_REMAINING_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct closure*) ; 
 int /*<<< orphan*/  FUNC2 (struct closure*) ; 
 int /*<<< orphan*/  FUNC3 (struct closure*) ; 
 int /*<<< orphan*/  FUNC4 (struct closure*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC5(struct closure *cl, struct closure *parent)
{
	FUNC4(cl, 0, sizeof(struct closure));
	cl->parent = parent;
	if (parent)
		FUNC2(parent);

	FUNC0(&cl->remaining, CLOSURE_REMAINING_INITIALIZER);

	FUNC1(cl);
	FUNC3(cl);
}