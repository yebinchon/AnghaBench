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
struct ti_sci_inta_event_desc {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 struct ti_sci_inta_event_desc* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_sci_inta_event_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	struct ti_sci_inta_event_desc *event_desc;

	event_desc = FUNC0(data);
	FUNC1(event_desc, data->hwirq);
}