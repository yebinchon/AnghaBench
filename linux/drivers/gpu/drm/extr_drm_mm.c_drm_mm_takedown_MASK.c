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
struct drm_mm {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_mm*) ; 

void FUNC3(struct drm_mm *mm)
{
	if (FUNC0(!FUNC1(mm),
		 "Memory manager not clean during takedown.\n"))
		FUNC2(mm);
}