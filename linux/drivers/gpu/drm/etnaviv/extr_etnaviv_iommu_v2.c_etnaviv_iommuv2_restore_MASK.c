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
struct etnaviv_iommu_context {int dummy; } ;
struct etnaviv_gpu {int sec_mode; } ;

/* Variables and functions */
#define  ETNA_SEC_KERNEL 129 
#define  ETNA_SEC_NONE 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_gpu*,struct etnaviv_iommu_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_gpu*,struct etnaviv_iommu_context*) ; 

__attribute__((used)) static void FUNC3(struct etnaviv_gpu *gpu,
				    struct etnaviv_iommu_context *context)
{
	switch (gpu->sec_mode) {
	case ETNA_SEC_NONE:
		FUNC1(gpu, context);
		break;
	case ETNA_SEC_KERNEL:
		FUNC2(gpu, context);
		break;
	default:
		FUNC0(1, "unhandled GPU security mode\n");
		break;
	}
}