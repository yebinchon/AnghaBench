#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qib_devdata {TYPE_1__* cspec; TYPE_3__* pcidev; TYPE_2__** rcd; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  rcvhdrq_size; } ;
struct TYPE_4__ {unsigned long dummy_hdrq_phys; int /*<<< orphan*/  dummy_hdrq; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int __GFP_COMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 

__attribute__((used)) static void FUNC2(struct qib_devdata *dd)
{
	dd->cspec->dummy_hdrq = FUNC0(&dd->pcidev->dev,
					dd->rcd[0]->rcvhdrq_size,
					&dd->cspec->dummy_hdrq_phys,
					GFP_ATOMIC | __GFP_COMP);
	if (!dd->cspec->dummy_hdrq) {
		FUNC1(dd->pcidev, "Couldn't allocate dummy hdrq\n");
		/* fallback to just 0'ing */
		dd->cspec->dummy_hdrq_phys = 0UL;
	}
}