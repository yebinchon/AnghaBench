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
struct target_type {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 struct target_type* FUNC0 (char const*) ; 
 int /*<<< orphan*/  _lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct target_type *FUNC4(const char *name)
{
	struct target_type *tt;

	FUNC1(&_lock);

	tt = FUNC0(name);
	if (tt && !FUNC2(tt->module))
		tt = NULL;

	FUNC3(&_lock);
	return tt;
}