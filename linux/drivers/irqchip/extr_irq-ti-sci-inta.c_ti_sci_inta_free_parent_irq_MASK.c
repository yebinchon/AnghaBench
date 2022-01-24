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
struct ti_sci_inta_vint_desc {int /*<<< orphan*/  parent_virq; int /*<<< orphan*/  vint_id; int /*<<< orphan*/  list; int /*<<< orphan*/  event_map; } ;
struct ti_sci_inta_irq_domain {int /*<<< orphan*/  vint; } ;

/* Variables and functions */
 scalar_t__ MAX_EVENTS_PER_VINT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_sci_inta_vint_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ti_sci_inta_irq_domain *inta,
					struct ti_sci_inta_vint_desc *vint_desc)
{
	if (FUNC0(vint_desc->event_map, MAX_EVENTS_PER_VINT) == MAX_EVENTS_PER_VINT) {
		FUNC3(&vint_desc->list);
		FUNC4(inta->vint, vint_desc->vint_id);
		FUNC1(vint_desc->parent_virq);
		FUNC2(vint_desc);
	}
}