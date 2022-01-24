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
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPI_PROP_ENABLED ; 
 scalar_t__ FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	if (FUNC0(d))
		FUNC1(d, false);

	FUNC2(d, LPI_PROP_ENABLED, 0);
}