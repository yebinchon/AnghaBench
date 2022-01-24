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
struct host1x_syncpt {int dummy; } ;
struct host1x {struct host1x_syncpt* syncpt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x*,struct host1x_syncpt*) ; 
 int /*<<< orphan*/  FUNC2 (struct host1x*,struct host1x_syncpt*) ; 
 scalar_t__ FUNC3 (struct host1x_syncpt*) ; 
 int /*<<< orphan*/  FUNC4 (struct host1x_syncpt*) ; 
 unsigned int FUNC5 (struct host1x*) ; 
 unsigned int FUNC6 (struct host1x*) ; 

void FUNC7(struct host1x *host)
{
	struct host1x_syncpt *sp_base = host->syncpt;
	unsigned int i;

	for (i = 0; i < FUNC6(host); i++) {
		if (FUNC3(sp_base + i))
			FUNC1(host, sp_base + i);
		else
			FUNC0(!FUNC4(sp_base + i));
	}

	for (i = 0; i < FUNC5(host); i++)
		FUNC2(host, sp_base + i);
}