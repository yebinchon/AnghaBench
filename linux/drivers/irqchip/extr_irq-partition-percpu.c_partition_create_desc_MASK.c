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
struct irq_domain_ops {int /*<<< orphan*/  alloc; int /*<<< orphan*/  free; int /*<<< orphan*/  translate; int /*<<< orphan*/  select; } ;
struct partition_desc {int nr_parts; struct partition_affinity* parts; int /*<<< orphan*/  chained_desc; int /*<<< orphan*/  bitmap; struct irq_domain* domain; struct irq_domain_ops ops; } ;
struct partition_affinity {int dummy; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int) ; 
 struct irq_domain* FUNC3 (struct fwnode_handle*,int,struct irq_domain_ops*,struct partition_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct partition_desc*) ; 
 struct partition_desc* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  partition_domain_alloc ; 
 int /*<<< orphan*/  partition_domain_free ; 

struct partition_desc *FUNC9(struct fwnode_handle *fwnode,
					     struct partition_affinity *parts,
					     int nr_parts,
					     int chained_irq,
					     const struct irq_domain_ops *ops)
{
	struct partition_desc *desc;
	struct irq_domain *d;

	FUNC1(!ops->select || !ops->translate);

	desc = FUNC8(sizeof(*desc), GFP_KERNEL);
	if (!desc)
		return NULL;

	desc->ops = *ops;
	desc->ops.free = partition_domain_free;
	desc->ops.alloc = partition_domain_alloc;

	d = FUNC3(fwnode, nr_parts, &desc->ops, desc);
	if (!d)
		goto out;
	desc->domain = d;

	desc->bitmap = FUNC6(FUNC0(nr_parts), sizeof(long),
			       GFP_KERNEL);
	if (FUNC2(!desc->bitmap))
		goto out;

	desc->chained_desc = FUNC5(chained_irq);
	desc->nr_parts = nr_parts;
	desc->parts = parts;

	return desc;
out:
	if (d)
		FUNC4(d);
	FUNC7(desc);

	return NULL;
}