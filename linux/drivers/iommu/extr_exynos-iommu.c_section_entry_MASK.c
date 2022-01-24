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
typedef  int /*<<< orphan*/  sysmmu_pte_t ;
typedef  int /*<<< orphan*/  sysmmu_iova_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sysmmu_pte_t *FUNC1(sysmmu_pte_t *pgtable, sysmmu_iova_t iova)
{
	return pgtable + FUNC0(iova);
}