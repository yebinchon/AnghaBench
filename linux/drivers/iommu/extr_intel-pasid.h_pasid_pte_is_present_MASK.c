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
struct pasid_entry {int /*<<< orphan*/ * val; } ;

/* Variables and functions */
 int PASID_PTE_PRESENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC1(struct pasid_entry *pte)
{
	return FUNC0(pte->val[0]) & PASID_PTE_PRESENT;
}