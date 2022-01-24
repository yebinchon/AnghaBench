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
struct rv6xx_ps {int dummy; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,struct rv6xx_ps*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct rv6xx_ps*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct rv6xx_ps*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct rv6xx_ps*) ; 
 struct rv6xx_ps* FUNC4 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev,
						struct radeon_ps *new_ps)
{
	struct rv6xx_ps *new_state = FUNC4(new_ps);

	FUNC1(rdev, new_state);
	FUNC2(rdev, new_state);
	FUNC3(rdev, new_state);
	FUNC0(rdev, new_state);
}