#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qib_devdata {TYPE_1__* pcidev; } ;
struct TYPE_3__ {scalar_t__ msi_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  QIB_DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_7220intr ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,char*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct qib_devdata *dd)
{
	int ret;

	ret = FUNC1(dd->pcidev, 0, qib_7220intr, NULL, dd,
			      QIB_DRV_NAME);
	if (ret)
		FUNC2(dd, "Couldn't setup %s interrupt (irq=%d): %d\n",
			    dd->pcidev->msi_enabled ?  "MSI" : "INTx",
			    FUNC0(dd->pcidev, 0), ret);
}