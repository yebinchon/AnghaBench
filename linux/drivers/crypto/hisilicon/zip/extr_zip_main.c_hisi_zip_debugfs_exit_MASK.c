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
struct TYPE_2__ {int /*<<< orphan*/  debug_root; } ;
struct hisi_qm {scalar_t__ fun_type; TYPE_1__ debug; } ;
struct hisi_zip {struct hisi_qm qm; } ;

/* Variables and functions */
 scalar_t__ QM_HW_PF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_zip*) ; 

__attribute__((used)) static void FUNC2(struct hisi_zip *hisi_zip)
{
	struct hisi_qm *qm = &hisi_zip->qm;

	FUNC0(qm->debug.debug_root);

	if (qm->fun_type == QM_HW_PF)
		FUNC1(hisi_zip);
}