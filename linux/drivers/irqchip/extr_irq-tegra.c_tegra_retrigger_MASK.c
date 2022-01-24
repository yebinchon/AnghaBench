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
 int /*<<< orphan*/  ICTLR_CPU_IEP_FIR_SET ; 
 int FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct irq_data *d)
{
	FUNC1(d, ICTLR_CPU_IEP_FIR_SET);
	return FUNC0(d);
}