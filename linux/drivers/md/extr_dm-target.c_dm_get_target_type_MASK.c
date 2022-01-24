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
struct target_type {int dummy; } ;

/* Variables and functions */
 struct target_type* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

struct target_type *FUNC2(const char *name)
{
	struct target_type *tt = FUNC0(name);

	if (!tt) {
		FUNC1(name);
		tt = FUNC0(name);
	}

	return tt;
}