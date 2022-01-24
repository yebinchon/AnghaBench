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
struct iommu_domain {void* handler_token; int /*<<< orphan*/  handler; } ;
typedef  int /*<<< orphan*/  iommu_fault_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(struct iommu_domain *domain,
					iommu_fault_handler_t handler,
					void *token)
{
	FUNC0(!domain);

	domain->handler = handler;
	domain->handler_token = token;
}