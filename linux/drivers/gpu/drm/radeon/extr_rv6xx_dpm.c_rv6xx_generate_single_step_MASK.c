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
typedef  int /*<<< orphan*/  u32 ;
struct rv6xx_sclk_stepping {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,struct rv6xx_sclk_stepping*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,struct rv6xx_sclk_stepping*) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
				       u32 clock, u32 index)
{
	struct rv6xx_sclk_stepping step;

	FUNC0(rdev, clock, &step);
	FUNC1(rdev, index, &step);
}