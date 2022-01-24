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
struct pblk {int /*<<< orphan*/  rwb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pblk*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pblk *pblk)
{
	if (FUNC2(&pblk->rwb))
		FUNC0(pblk, "write buffer error on tear down\n");

	FUNC1(&pblk->rwb);
}