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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  MBUS_ABOX_CTL ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	u32 val;

	val = FUNC1(16) |
	      FUNC2(16) |
	      FUNC4(1) |
	      FUNC3(1);

	FUNC0(MBUS_ABOX_CTL, val);
}