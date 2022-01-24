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
struct nouveau_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_fence**) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_fence*,int,int) ; 

__attribute__((used)) static void FUNC2(struct nouveau_fence **fence)
{
	if (fence) {
		FUNC1(*fence, true, false);
		FUNC0(fence);
	} else {
		/*
		 * FIXME wait for channel to be IDLE before calling finalizing
		 * the hmem object.
		 */
	}
}