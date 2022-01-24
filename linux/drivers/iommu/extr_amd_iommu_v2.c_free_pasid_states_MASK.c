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
struct pasid_state {int /*<<< orphan*/  mm; int /*<<< orphan*/  mn; } ;
struct device_state {int max_pasids; int pasid_levels; scalar_t__ states; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct pasid_state* FUNC4 (struct device_state*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct pasid_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct pasid_state*) ; 

__attribute__((used)) static void FUNC9(struct device_state *dev_state)
{
	struct pasid_state *pasid_state;
	int i;

	for (i = 0; i < dev_state->max_pasids; ++i) {
		pasid_state = FUNC4(dev_state, i);
		if (pasid_state == NULL)
			continue;

		FUNC7(pasid_state);

		/*
		 * This will call the mn_release function and
		 * unbind the PASID
		 */
		FUNC5(&pasid_state->mn, pasid_state->mm);

		FUNC8(pasid_state); /* Reference taken in
						      amd_iommu_bind_pasid */

		/* Drop reference taken in amd_iommu_bind_pasid */
		FUNC6(dev_state);
	}

	if (dev_state->pasid_levels == 2)
		FUNC3(dev_state->states);
	else if (dev_state->pasid_levels == 1)
		FUNC2(dev_state->states);
	else
		FUNC0(dev_state->pasid_levels != 0);

	FUNC1((unsigned long)dev_state->states);
}