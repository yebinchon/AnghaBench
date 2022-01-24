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
struct target_type {int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _lock ; 
 int /*<<< orphan*/  _targets ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct target_type *tt)
{
	int rv = 0;

	FUNC1(&_lock);
	if (FUNC0(tt->name))
		rv = -EEXIST;
	else
		FUNC2(&tt->list, &_targets);

	FUNC3(&_lock);
	return rv;
}