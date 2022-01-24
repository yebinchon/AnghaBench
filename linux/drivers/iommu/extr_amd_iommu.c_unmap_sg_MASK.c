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
struct scatterlist {int dummy; } ;
struct protection_domain {int dummy; } ;
struct dma_ops_domain {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct protection_domain*) ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct dma_ops_domain*,unsigned long,int,int) ; 
 struct protection_domain* FUNC2 (struct device*) ; 
 unsigned long FUNC3 (struct scatterlist*) ; 
 int FUNC4 (struct device*,struct scatterlist*,int) ; 
 struct dma_ops_domain* FUNC5 (struct protection_domain*) ; 

__attribute__((used)) static void FUNC6(struct device *dev, struct scatterlist *sglist,
		     int nelems, enum dma_data_direction dir,
		     unsigned long attrs)
{
	struct protection_domain *domain;
	struct dma_ops_domain *dma_dom;
	unsigned long startaddr;
	int npages;

	domain = FUNC2(dev);
	if (FUNC0(domain))
		return;

	startaddr = FUNC3(sglist) & PAGE_MASK;
	dma_dom   = FUNC5(domain);
	npages    = FUNC4(dev, sglist, nelems);

	FUNC1(dma_dom, startaddr, npages << PAGE_SHIFT, dir);
}