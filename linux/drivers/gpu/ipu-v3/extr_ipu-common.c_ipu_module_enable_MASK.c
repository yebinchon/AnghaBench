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
struct ipu_soc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPU_CONF ; 
 int IPU_CONF_DI0_EN ; 
 int IPU_CONF_DI1_EN ; 
 int IPU_DI0_COUNTER_RELEASE ; 
 int IPU_DI1_COUNTER_RELEASE ; 
 int /*<<< orphan*/  IPU_DISP_GEN ; 
 int FUNC0 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_soc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct ipu_soc *ipu, u32 mask)
{
	unsigned long lock_flags;
	u32 val;

	FUNC2(&ipu->lock, lock_flags);

	val = FUNC0(ipu, IPU_DISP_GEN);

	if (mask & IPU_CONF_DI0_EN)
		val |= IPU_DI0_COUNTER_RELEASE;
	if (mask & IPU_CONF_DI1_EN)
		val |= IPU_DI1_COUNTER_RELEASE;

	FUNC1(ipu, val, IPU_DISP_GEN);

	val = FUNC0(ipu, IPU_CONF);
	val |= mask;
	FUNC1(ipu, val, IPU_CONF);

	FUNC3(&ipu->lock, lock_flags);

	return 0;
}