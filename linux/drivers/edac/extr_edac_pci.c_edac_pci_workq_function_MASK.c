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
struct work_struct {int dummy; } ;
struct edac_pci_ctl_info {scalar_t__ op_state; int /*<<< orphan*/  work; int /*<<< orphan*/  (* edac_check ) (struct edac_pci_ctl_info*) ;} ;
struct delayed_work {int dummy; } ;

/* Variables and functions */
 scalar_t__ OP_RUNNING_POLL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  edac_pci_ctls_mutex ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct edac_pci_ctl_info*) ; 
 struct delayed_work* FUNC9 (struct work_struct*) ; 
 struct edac_pci_ctl_info* FUNC10 (struct delayed_work*) ; 

__attribute__((used)) static void FUNC11(struct work_struct *work_req)
{
	struct delayed_work *d_work = FUNC9(work_req);
	struct edac_pci_ctl_info *pci = FUNC10(d_work);
	int msec;
	unsigned long delay;

	FUNC0(3, "checking\n");

	FUNC5(&edac_pci_ctls_mutex);

	if (pci->op_state != OP_RUNNING_POLL) {
		FUNC6(&edac_pci_ctls_mutex);
		return;
	}

	if (FUNC1())
		pci->edac_check(pci);

	/* if we are on a one second period, then use round */
	msec = FUNC2();
	if (msec == 1000)
		delay = FUNC7(FUNC4(msec));
	else
		delay = FUNC4(msec);

	FUNC3(&pci->work, delay);

	FUNC6(&edac_pci_ctls_mutex);
}