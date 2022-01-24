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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLANE_SPRITE0 ; 
 int /*<<< orphan*/  PLANE_SPRITE1 ; 

__attribute__((used)) static bool FUNC1(unsigned int active_planes)
{
	return (active_planes & (FUNC0(PLANE_SPRITE0) |
				 FUNC0(PLANE_SPRITE1))) == FUNC0(PLANE_SPRITE1);
}