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
struct etnaviv_gpu {scalar_t__ sec_mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ETNA_SEC_NONE ; 
 int FUNC0 (int) ; 
 int VIVS_MMUv2_SEC_EXCEPTION_ADDR ; 
 int VIVS_MMUv2_SEC_STATUS ; 
 int VIVS_MMUv2_STATUS ; 
 int VIVS_MMUv2_STATUS_EXCEPTION0__MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct etnaviv_gpu*,int) ; 

__attribute__((used)) static void FUNC3(struct etnaviv_gpu *gpu)
{
	u32 status_reg, status;
	int i;

	if (gpu->sec_mode == ETNA_SEC_NONE)
		status_reg = VIVS_MMUv2_STATUS;
	else
		status_reg = VIVS_MMUv2_SEC_STATUS;

	status = FUNC2(gpu, status_reg);
	FUNC1(gpu->dev, "MMU fault status 0x%08x\n", status);

	for (i = 0; i < 4; i++) {
		u32 address_reg;

		if (!(status & (VIVS_MMUv2_STATUS_EXCEPTION0__MASK << (i * 4))))
			continue;

		if (gpu->sec_mode == ETNA_SEC_NONE)
			address_reg = FUNC0(i);
		else
			address_reg = VIVS_MMUv2_SEC_EXCEPTION_ADDR;

		FUNC1(gpu->dev, "MMU %d fault addr 0x%08x\n", i,
				    FUNC2(gpu, address_reg));
	}
}