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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned int FUNC1 (unsigned long,unsigned long) ; 
 unsigned int FUNC2 (unsigned long) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setup_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long irq, unsigned long trigger)
{
	unsigned int tmp;

	FUNC4(&setup_lock);

	/* setup trigger */
	tmp = FUNC3(FUNC0(irq)) & FUNC2(irq);

	FUNC6(tmp | FUNC1(trigger, irq), FUNC0(irq));

	FUNC5(&setup_lock);
}