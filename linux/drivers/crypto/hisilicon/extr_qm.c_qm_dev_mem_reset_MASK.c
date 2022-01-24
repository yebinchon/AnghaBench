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
typedef  int u32 ;
struct hisi_qm {scalar_t__ io_base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ QM_MEM_INIT_DONE ; 
 scalar_t__ QM_MEM_START_INIT ; 
 int FUNC1 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct hisi_qm *qm)
{
	u32 val;

	FUNC2(0x1, qm->io_base + QM_MEM_START_INIT);
	return FUNC1(qm->io_base + QM_MEM_INIT_DONE, val,
					  val & FUNC0(0), 10, 1000);
}