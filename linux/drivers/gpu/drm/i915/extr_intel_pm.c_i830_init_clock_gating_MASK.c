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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MEM_DISPLAY_A_TRICKLE_FEED_DISABLE ; 
 int /*<<< orphan*/  MEM_DISPLAY_B_TRICKLE_FEED_DISABLE ; 
 int /*<<< orphan*/  MEM_MODE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct drm_i915_private *dev_priv)
{
	FUNC0(MEM_MODE,
		   FUNC1(MEM_DISPLAY_A_TRICKLE_FEED_DISABLE) |
		   FUNC1(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
}