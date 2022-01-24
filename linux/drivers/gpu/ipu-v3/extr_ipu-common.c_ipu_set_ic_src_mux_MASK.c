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
typedef  int /*<<< orphan*/  u32 ;
struct ipu_soc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPU_CONF ; 
 int /*<<< orphan*/  IPU_CONF_CSI_SEL ; 
 int /*<<< orphan*/  IPU_CONF_IC_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_soc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct ipu_soc *ipu, int csi_id, bool vdi)
{
	unsigned long flags;
	u32 val;

	FUNC2(&ipu->lock, flags);

	val = FUNC0(ipu, IPU_CONF);
	if (vdi)
		val |= IPU_CONF_IC_INPUT;
	else
		val &= ~IPU_CONF_IC_INPUT;

	if (csi_id == 1)
		val |= IPU_CONF_CSI_SEL;
	else
		val &= ~IPU_CONF_CSI_SEL;

	FUNC1(ipu, val, IPU_CONF);

	FUNC3(&ipu->lock, flags);
}