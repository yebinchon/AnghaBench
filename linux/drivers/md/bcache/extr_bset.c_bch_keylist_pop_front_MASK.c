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
struct keylist {int /*<<< orphan*/  keys; int /*<<< orphan*/  top_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct keylist *l)
{
	l->top_p -= FUNC2(l->keys);

	FUNC3(l->keys,
		FUNC1(l->keys),
		FUNC0(l));
}