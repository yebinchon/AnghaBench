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
struct pasid_entry {int dummy; } ;
struct pasid_dir_entry {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int PDE_PFN_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pasid_dir_entry*) ; 
 struct pasid_entry* FUNC2 (int) ; 

__attribute__((used)) static inline struct pasid_entry *
FUNC3(struct pasid_dir_entry *pde)
{
	if (!FUNC1(pde))
		return NULL;

	return FUNC2(FUNC0(pde->val) & PDE_PFN_MASK);
}