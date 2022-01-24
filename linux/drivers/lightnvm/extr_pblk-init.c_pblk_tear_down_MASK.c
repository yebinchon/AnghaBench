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
struct pblk {int /*<<< orphan*/  rl; int /*<<< orphan*/  rwb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*) ; 

__attribute__((used)) static void FUNC6(struct pblk *pblk, bool graceful)
{
	if (graceful)
		FUNC0(pblk);
	FUNC1(pblk);
	FUNC5(pblk);
	FUNC3(&pblk->rwb);
	FUNC4(&pblk->rl);

	FUNC2(pblk, "consistent tear down (graceful:%d)\n", graceful);
}