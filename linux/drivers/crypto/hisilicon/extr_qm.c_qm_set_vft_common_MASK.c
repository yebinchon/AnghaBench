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
typedef  enum vft_type { ____Placeholder_vft_type } vft_type ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ QM_VFT_CFG ; 
 scalar_t__ QM_VFT_CFG_OP_ENABLE ; 
 scalar_t__ QM_VFT_CFG_OP_WR ; 
 scalar_t__ QM_VFT_CFG_RDY ; 
 scalar_t__ QM_VFT_CFG_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_qm*,int,int,int) ; 
 int FUNC2 (scalar_t__,unsigned int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct hisi_qm *qm, enum vft_type type,
			     u32 fun_num, u32 base, u32 number)
{
	unsigned int val;
	int ret;

	ret = FUNC2(qm->io_base + QM_VFT_CFG_RDY, val,
					 val & FUNC0(0), 10, 1000);
	if (ret)
		return ret;

	FUNC3(0x0, qm->io_base + QM_VFT_CFG_OP_WR);
	FUNC3(type, qm->io_base + QM_VFT_CFG_TYPE);
	FUNC3(fun_num, qm->io_base + QM_VFT_CFG);

	FUNC1(qm, type, base, number);

	FUNC3(0x0, qm->io_base + QM_VFT_CFG_RDY);
	FUNC3(0x1, qm->io_base + QM_VFT_CFG_OP_ENABLE);

	return FUNC2(qm->io_base + QM_VFT_CFG_RDY, val,
					  val & FUNC0(0), 10, 1000);
}