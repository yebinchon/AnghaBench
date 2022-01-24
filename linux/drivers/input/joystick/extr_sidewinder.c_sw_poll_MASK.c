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
struct sw {int /*<<< orphan*/  bads; int /*<<< orphan*/  reads; } ;
struct gameport {int dummy; } ;

/* Variables and functions */
 struct sw* FUNC0 (struct gameport*) ; 
 scalar_t__ FUNC1 (struct sw*) ; 

__attribute__((used)) static void FUNC2(struct gameport *gameport)
{
	struct sw *sw = FUNC0(gameport);

	sw->reads++;
	if (FUNC1(sw))
		sw->bads++;
}