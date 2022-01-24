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
 int /*<<< orphan*/  HSW_MBVID2_MISR0 ; 
 int /*<<< orphan*/  HSW_MBVID2_NOA0 ; 
 int /*<<< orphan*/  HSW_MBVID2_NOA9 ; 
 scalar_t__ FUNC0 (struct drm_i915_private*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct drm_i915_private *dev_priv, u32 addr)
{
	return FUNC0(dev_priv, addr) ||
		(addr >= 0x25100 && addr <= 0x2FF90) ||
		(addr >= FUNC1(HSW_MBVID2_NOA0) &&
		 addr <= FUNC1(HSW_MBVID2_NOA9)) ||
		addr == FUNC1(HSW_MBVID2_MISR0);
}