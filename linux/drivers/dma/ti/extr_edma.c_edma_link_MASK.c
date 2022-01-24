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
struct edma_cc {unsigned int num_slots; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  PARM_LINK_BCNTRLD ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct edma_cc*,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct edma_cc *ecc, unsigned from, unsigned to)
{
	if (FUNC5(FUNC1(from) != FUNC1(to)))
		FUNC3(ecc->dev, "Ignoring eDMA instance for linking\n");

	from = FUNC0(from);
	to = FUNC0(to);
	if (from >= ecc->num_slots || to >= ecc->num_slots)
		return;

	FUNC4(ecc, PARM_LINK_BCNTRLD, from, 0xffff0000,
			  FUNC2(to));
}