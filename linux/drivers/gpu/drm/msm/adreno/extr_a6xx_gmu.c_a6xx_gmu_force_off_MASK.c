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
struct a6xx_gmu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct a6xx_gmu*) ; 
 int /*<<< orphan*/  FUNC1 (struct a6xx_gmu*) ; 
 int /*<<< orphan*/  FUNC2 (struct a6xx_gmu*) ; 
 int /*<<< orphan*/  FUNC3 (struct a6xx_gmu*) ; 

__attribute__((used)) static void FUNC4(struct a6xx_gmu *gmu)
{
	/* Flush all the queues */
	FUNC2(gmu);

	/* Stop the interrupts */
	FUNC0(gmu);

	/* Force off SPTP in case the GMU is managing it */
	FUNC3(gmu);

	/* Make sure there are no outstanding RPMh votes */
	FUNC1(gmu);
}