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
typedef  scalar_t__ u32 ;
struct qib_pportdata {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rdi; } ;
struct qib_devdata {TYPE_1__ verbs_dev; int /*<<< orphan*/  list; int /*<<< orphan*/  int_counter; int /*<<< orphan*/  unit; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int ENOMEM ; 
 struct qib_devdata* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ qib_cpulist ; 
 scalar_t__ qib_cpulist_count ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  qib_dev_table ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u64 ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xa_limit_32b ; 

struct qib_devdata *FUNC13(struct pci_dev *pdev, size_t extra)
{
	struct qib_devdata *dd;
	int ret, nports;

	/* extra is * number of ports */
	nports = extra / sizeof(struct qib_pportdata);
	dd = (struct qib_devdata *)FUNC9(sizeof(*dd) + extra,
						    nports);
	if (!dd)
		return FUNC1(-ENOMEM);

	ret = FUNC12(&qib_dev_table, &dd->unit, dd, xa_limit_32b,
			GFP_KERNEL);
	if (ret < 0) {
		FUNC8(&pdev->dev,
			      "Could not allocate unit ID: error %d\n", -ret);
		goto bail;
	}
	FUNC11(&dd->verbs_dev.rdi, "%s%d", "qib", dd->unit);

	dd->int_counter = FUNC2(u64);
	if (!dd->int_counter) {
		ret = -ENOMEM;
		FUNC8(&pdev->dev,
			      "Could not allocate per-cpu int_counter\n");
		goto bail;
	}

	if (!qib_cpulist_count) {
		u32 count = FUNC6();

		qib_cpulist = FUNC3(FUNC0(count), sizeof(long),
				      GFP_KERNEL);
		if (qib_cpulist)
			qib_cpulist_count = count;
	}
#ifdef CONFIG_DEBUG_FS
	qib_dbg_ibdev_init(&dd->verbs_dev);
#endif
	return dd;
bail:
	if (!FUNC5(&dd->list))
		FUNC4(&dd->list);
	FUNC10(&dd->verbs_dev.rdi);
	return FUNC1(ret);
}