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
struct irq_domain_ops {int dummy; } ;
struct irq_domain {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct irq_domain* gic_domain ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct irq_domain_ops const* vpe_domain_ops ; 

int FUNC2(struct irq_domain *domain, const struct irq_domain_ops *ops)
{
	if (domain) {
		FUNC1("ITS: Enabling GICv4 support\n");
		gic_domain = domain;
		vpe_domain_ops = ops;
		return 0;
	}

	FUNC0("ITS: No GICv4 VPE domain allocated\n");
	return -ENODEV;
}