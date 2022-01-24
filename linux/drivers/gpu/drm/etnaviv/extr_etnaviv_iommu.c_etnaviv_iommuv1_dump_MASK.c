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
struct etnaviv_iommuv1_context {int /*<<< orphan*/  pgtable_cpu; } ;
struct etnaviv_iommu_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct etnaviv_iommuv1_context* FUNC1 (struct etnaviv_iommu_context*) ; 

__attribute__((used)) static void FUNC2(struct etnaviv_iommu_context *context,
				 void *buf)
{
	struct etnaviv_iommuv1_context *v1_context = FUNC1(context);

	FUNC0(buf, v1_context->pgtable_cpu, PT_SIZE);
}