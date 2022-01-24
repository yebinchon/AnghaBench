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

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  amdgpu_pasid_ida ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(unsigned int bits)
{
	int pasid = -EINVAL;

	for (bits = FUNC1(bits, 31U); bits > 0; bits--) {
		pasid = FUNC0(&amdgpu_pasid_ida,
				       1U << (bits - 1), 1U << bits,
				       GFP_KERNEL);
		if (pasid != -ENOSPC)
			break;
	}

	if (pasid >= 0)
		FUNC2(pasid);

	return pasid;
}