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
typedef  scalar_t__ u16 ;
struct ti_sci_inta_vint_desc {unsigned int parent_virq; int /*<<< orphan*/  list; scalar_t__ vint_id; struct irq_domain* domain; } ;
struct ti_sci_inta_irq_domain {int /*<<< orphan*/  vint_list; TYPE_1__* pdev; int /*<<< orphan*/  vint; } ;
struct irq_fwspec {int param_count; scalar_t__* param; int /*<<< orphan*/  fwnode; } ;
struct irq_domain {struct ti_sci_inta_irq_domain* host_data; } ;
struct TYPE_2__ {scalar_t__ id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ti_sci_inta_vint_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ TI_SCI_RESOURCE_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (struct irq_fwspec*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,struct ti_sci_inta_vint_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_sci_inta_vint_desc*) ; 
 struct ti_sci_inta_vint_desc* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_sci_inta_irq_handler ; 

__attribute__((used)) static struct ti_sci_inta_vint_desc *FUNC11(struct irq_domain *domain)
{
	struct ti_sci_inta_irq_domain *inta = domain->host_data;
	struct ti_sci_inta_vint_desc *vint_desc;
	struct irq_fwspec parent_fwspec;
	unsigned int parent_virq;
	u16 vint_id;

	vint_id = FUNC10(inta->vint);
	if (vint_id == TI_SCI_RESOURCE_NULL)
		return FUNC0(-EINVAL);

	vint_desc = FUNC6(sizeof(*vint_desc), GFP_KERNEL);
	if (!vint_desc)
		return FUNC0(-ENOMEM);

	vint_desc->domain = domain;
	vint_desc->vint_id = vint_id;
	FUNC1(&vint_desc->list);

	parent_fwspec.fwnode = FUNC9(FUNC8(FUNC2(&inta->pdev->dev)));
	parent_fwspec.param_count = 2;
	parent_fwspec.param[0] = inta->pdev->id;
	parent_fwspec.param[1] = vint_desc->vint_id;

	parent_virq = FUNC3(&parent_fwspec);
	if (parent_virq == 0) {
		FUNC5(vint_desc);
		return FUNC0(-EINVAL);
	}
	vint_desc->parent_virq = parent_virq;

	FUNC7(&vint_desc->list, &inta->vint_list);
	FUNC4(vint_desc->parent_virq,
					 ti_sci_inta_irq_handler, vint_desc);

	return vint_desc;
}