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
struct dmar_domain {int /*<<< orphan*/  domain; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  enum dma_sync_target { ____Placeholder_dma_sync_target } dma_sync_target ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct dmar_domain* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,size_t,int,int) ; 

__attribute__((used)) static void
FUNC5(struct device *dev, dma_addr_t addr, size_t size,
		   enum dma_data_direction dir, enum dma_sync_target target)
{
	struct dmar_domain *domain;
	phys_addr_t tlb_addr;

	domain = FUNC1(dev);
	if (FUNC0(!domain))
		return;

	tlb_addr = FUNC2(&domain->domain, addr);
	if (FUNC3(tlb_addr))
		FUNC4(dev, tlb_addr, size, dir, target);
}