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
typedef  int /*<<< orphan*/  u16 ;
struct etnaviv_gpu {scalar_t__ sec_mode; } ;

/* Variables and functions */
 scalar_t__ ETNA_SEC_KERNEL ; 
 int /*<<< orphan*/  VIVS_FE_COMMAND_ADDRESS ; 
 int /*<<< orphan*/  VIVS_FE_COMMAND_CONTROL ; 
 int VIVS_FE_COMMAND_CONTROL_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIVS_MMUv2_SEC_COMMAND_CONTROL ; 
 int VIVS_MMUv2_SEC_COMMAND_CONTROL_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_gpu*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct etnaviv_gpu *gpu, u32 address, u16 prefetch)
{
	FUNC2(gpu, VIVS_FE_COMMAND_ADDRESS, address);
	FUNC2(gpu, VIVS_FE_COMMAND_CONTROL,
		  VIVS_FE_COMMAND_CONTROL_ENABLE |
		  FUNC0(prefetch));

	if (gpu->sec_mode == ETNA_SEC_KERNEL) {
		FUNC2(gpu, VIVS_MMUv2_SEC_COMMAND_CONTROL,
			  VIVS_MMUv2_SEC_COMMAND_CONTROL_ENABLE |
			  FUNC1(prefetch));
	}
}