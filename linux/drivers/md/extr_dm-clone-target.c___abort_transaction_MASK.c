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
 int /*<<< orphan*/  CM_FAIL ; 
 scalar_t__ CM_READ_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct clone*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct clone*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct clone*) ; 

__attribute__((used)) static void FUNC5(struct clone *clone)
{
	const char *dev_name = FUNC2(clone);

	if (FUNC4(clone) >= CM_READ_ONLY)
		return;

	FUNC0("%s: Aborting current metadata transaction", dev_name);
	if (FUNC3(clone->cmd)) {
		FUNC0("%s: Failed to abort metadata transaction", dev_name);
		FUNC1(clone, CM_FAIL);
	}
}