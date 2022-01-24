#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ buffer_created; int /*<<< orphan*/  name; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* createbuffer_tests ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void *ignored)
{
	int i = 0;

	for (i = 0; i < FUNC0(createbuffer_tests); i++) {
		FUNC1(createbuffer_tests[i].buffer_created !=
				FUNC2(&createbuffer_tests[i].cmd),
		     "Test %d: \"%s\" failed\n", i, createbuffer_tests[i].name);
	}

	return 0;
}