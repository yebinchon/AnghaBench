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
struct ipu_soc {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2(struct ipu_soc *ipu, int irq)
{
	int virq;

	virq = FUNC1(ipu->domain, irq);
	if (!virq)
		virq = FUNC0(ipu->domain, irq);

	return virq;
}