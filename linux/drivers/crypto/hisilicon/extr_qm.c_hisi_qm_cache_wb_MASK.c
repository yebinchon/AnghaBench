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
struct hisi_qm {scalar_t__ ver; TYPE_1__* pdev; scalar_t__ io_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ QM_CACHE_WB_DONE ; 
 scalar_t__ QM_CACHE_WB_START ; 
 scalar_t__ QM_HW_V2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (scalar_t__,unsigned int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct hisi_qm *qm)
{
	unsigned int val;

	if (qm->ver == QM_HW_V2) {
		FUNC3(0x1, qm->io_base + QM_CACHE_WB_START);
		if (FUNC2(qm->io_base + QM_CACHE_WB_DONE,
					       val, val & FUNC0(0), 10, 1000))
			FUNC1(&qm->pdev->dev, "QM writeback sqc cache fail!\n");
	}
}