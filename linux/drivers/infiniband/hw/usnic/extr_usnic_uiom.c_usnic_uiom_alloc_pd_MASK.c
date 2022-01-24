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
struct usnic_uiom_pd {int /*<<< orphan*/  devs; int /*<<< orphan*/  lock; void* domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct usnic_uiom_pd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usnic_uiom_pd*) ; 
 struct usnic_uiom_pd* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  usnic_uiom_dma_fault ; 

struct usnic_uiom_pd *FUNC8(void)
{
	struct usnic_uiom_pd *pd;
	void *domain;

	pd = FUNC5(sizeof(*pd), GFP_KERNEL);
	if (!pd)
		return FUNC0(-ENOMEM);

	pd->domain = domain = FUNC2(&pci_bus_type);
	if (!domain) {
		FUNC7("Failed to allocate IOMMU domain");
		FUNC4(pd);
		return FUNC0(-ENOMEM);
	}

	FUNC3(pd->domain, usnic_uiom_dma_fault, NULL);

	FUNC6(&pd->lock);
	FUNC1(&pd->devs);

	return pd;
}