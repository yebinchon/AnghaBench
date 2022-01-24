#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct qib_devdata {int flags; int num_pports; TYPE_4__* cspec; TYPE_3__* pport; TYPE_1__* pcidev; } ;
struct TYPE_8__ {int dca_ctrl; int gpio_mask; int /*<<< orphan*/  gpio_lock; int /*<<< orphan*/  msix_entries; int /*<<< orphan*/  sendibchk; int /*<<< orphan*/  sendgrhchk; int /*<<< orphan*/  sendchkenable; int /*<<< orphan*/  cntrs; } ;
struct TYPE_7__ {TYPE_2__* cpspec; } ;
struct TYPE_6__ {int /*<<< orphan*/  portcntrs; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACtrlA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int QIB_DCA_ENABLED ; 
 int QIB_HAS_QSFP ; 
 int QSFP_GPIO_MOD_PRS_N ; 
 int QSFP_GPIO_PORT2_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kr_gpio_mask ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct qib_devdata *dd)
{
	int i;

#ifdef CONFIG_INFINIBAND_QIB_DCA
	if (dd->flags & QIB_DCA_ENABLED) {
		dca_remove_requester(&dd->pcidev->dev);
		dd->flags &= ~QIB_DCA_ENABLED;
		dd->cspec->dca_ctrl = 0;
		qib_write_kreg(dd, KREG_IDX(DCACtrlA), dd->cspec->dca_ctrl);
	}
#endif

	FUNC3(dd);
	FUNC2(dd->cspec->cntrs);
	FUNC2(dd->cspec->sendchkenable);
	FUNC2(dd->cspec->sendgrhchk);
	FUNC2(dd->cspec->sendibchk);
	FUNC2(dd->cspec->msix_entries);
	for (i = 0; i < dd->num_pports; i++) {
		unsigned long flags;
		u32 mask = QSFP_GPIO_MOD_PRS_N |
			(QSFP_GPIO_MOD_PRS_N << QSFP_GPIO_PORT2_SHIFT);

		FUNC2(dd->pport[i].cpspec->portcntrs);
		if (dd->flags & QIB_HAS_QSFP) {
			FUNC5(&dd->cspec->gpio_lock, flags);
			dd->cspec->gpio_mask &= ~mask;
			FUNC4(dd, kr_gpio_mask, dd->cspec->gpio_mask);
			FUNC6(&dd->cspec->gpio_lock, flags);
		}
	}
}