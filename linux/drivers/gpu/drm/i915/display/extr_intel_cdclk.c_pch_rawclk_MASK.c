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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_RAWCLK_FREQ ; 
 int RAWCLK_FREQ_MASK ; 

__attribute__((used)) static int FUNC1(struct drm_i915_private *dev_priv)
{
	return (FUNC0(PCH_RAWCLK_FREQ) & RAWCLK_FREQ_MASK) * 1000;
}