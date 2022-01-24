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
struct v2m_data {scalar_t__ spi_start; int /*<<< orphan*/  bm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v2m_lock ; 

__attribute__((used)) static void FUNC4(struct v2m_data *v2m, unsigned int hwirq,
			       int nr_irqs)
{
	FUNC2(&v2m_lock);
	FUNC0(v2m->bm, hwirq - v2m->spi_start,
			      FUNC1(nr_irqs));
	FUNC3(&v2m_lock);
}