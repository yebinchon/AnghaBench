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
struct clone {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 scalar_t__ CM_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct clone*,scalar_t__) ; 
 char* FUNC3 (struct clone*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct clone*) ; 

__attribute__((used)) static void FUNC6(struct clone *clone)
{
	const char *dev_name = FUNC3(clone);

	if (FUNC5(clone) == CM_FAIL)
		return;

	/* Reload the on-disk bitset */
	FUNC1("%s: Reloading on-disk bitmap", dev_name);
	if (FUNC4(clone->cmd)) {
		FUNC0("%s: Failed to reload on-disk bitmap", dev_name);
		FUNC2(clone, CM_FAIL);
	}
}