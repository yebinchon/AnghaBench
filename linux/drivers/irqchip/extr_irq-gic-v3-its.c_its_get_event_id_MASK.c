#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ lpi_base; } ;
struct its_device {TYPE_1__ event_map; } ;
struct irq_data {scalar_t__ hwirq; } ;

/* Variables and functions */
 struct its_device* FUNC0 (struct irq_data*) ; 

__attribute__((used)) static inline u32 FUNC1(struct irq_data *d)
{
	struct its_device *its_dev = FUNC0(d);
	return d->hwirq - its_dev->event_map.lpi_base;
}