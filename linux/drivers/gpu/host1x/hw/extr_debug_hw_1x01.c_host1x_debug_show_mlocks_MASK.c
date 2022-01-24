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
typedef  int /*<<< orphan*/  u32 ;
struct output {int dummy; } ;
struct host1x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct output*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct host1x*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct host1x*) ; 

__attribute__((used)) static void FUNC7(struct host1x *host, struct output *o)
{
	unsigned int i;

	FUNC4(o, "---- mlocks ----\n");

	for (i = 0; i < FUNC6(host); i++) {
		u32 owner =
			FUNC5(host, FUNC0(i));
		if (FUNC2(owner))
			FUNC4(o, "%u: locked by channel %u\n",
				i, FUNC1(owner));
		else if (FUNC3(owner))
			FUNC4(o, "%u: locked by cpu\n", i);
		else
			FUNC4(o, "%u: unlocked\n", i);
	}

	FUNC4(o, "\n");
}