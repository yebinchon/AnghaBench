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
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct radeon_device*,struct radeon_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_ring*,int /*<<< orphan*/ ) ; 

int FUNC4(struct radeon_device *rdev, struct radeon_ring *ring,
			unsigned size, uint32_t *data)
{
	int i, r;

	if (!size || !data)
		return 0;

	/* restore the saved ring content */
	r = FUNC1(rdev, ring, size);
	if (r)
		return r;

	for (i = 0; i < size; ++i) {
		FUNC3(ring, data[i]);
	}

	FUNC2(rdev, ring, false);
	FUNC0(data);
	return 0;
}