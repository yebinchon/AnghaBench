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
struct irq_data {int /*<<< orphan*/  parent_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPI_PROP_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	/* Same hack as above... */
	FUNC1(d->parent_data, 0, LPI_PROP_ENABLED);
	FUNC0(d);
}