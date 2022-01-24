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
struct qib_devdata {int cfgctxts; int rcvtidcnt; struct page** pageshadow; int /*<<< orphan*/ * physshadow; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct page**) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qib_devdata *dd)
{
	struct page **pages;
	dma_addr_t *addrs;

	pages = FUNC2(FUNC0(sizeof(struct page *),
				   dd->cfgctxts * dd->rcvtidcnt));
	if (!pages)
		goto bail;

	addrs = FUNC2(FUNC0(sizeof(dma_addr_t),
				   dd->cfgctxts * dd->rcvtidcnt));
	if (!addrs)
		goto bail_free;

	dd->pageshadow = pages;
	dd->physshadow = addrs;
	return;

bail_free:
	FUNC1(pages);
bail:
	dd->pageshadow = NULL;
}