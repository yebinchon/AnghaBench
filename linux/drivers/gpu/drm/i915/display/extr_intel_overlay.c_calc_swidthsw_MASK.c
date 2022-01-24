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
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 

__attribute__((used)) static u32 FUNC2(struct drm_i915_private *dev_priv, u32 offset, u32 width)
{
	u32 sw;

	if (FUNC1(dev_priv, 2))
		sw = FUNC0((offset & 31) + width, 32);
	else
		sw = FUNC0((offset & 63) + width, 64);

	if (sw == 0)
		return 0;

	return (sw - 32) >> 3;
}