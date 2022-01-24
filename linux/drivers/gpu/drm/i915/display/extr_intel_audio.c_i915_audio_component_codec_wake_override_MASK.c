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
struct drm_i915_private {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSW_AUD_CHICKENBIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  SKL_AUD_CODEC_WAKE_SIGNAL ; 
 unsigned long FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,unsigned long) ; 
 struct drm_i915_private* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct device *kdev,
						     bool enable)
{
	struct drm_i915_private *dev_priv = FUNC5(kdev);
	unsigned long cookie;
	u32 tmp;

	if (!FUNC2(dev_priv, 9))
		return;

	cookie = FUNC3(kdev);

	/*
	 * Enable/disable generating the codec wake signal, overriding the
	 * internal logic to generate the codec wake to controller.
	 */
	tmp = FUNC0(HSW_AUD_CHICKENBIT);
	tmp &= ~SKL_AUD_CODEC_WAKE_SIGNAL;
	FUNC1(HSW_AUD_CHICKENBIT, tmp);
	FUNC6(1000, 1500);

	if (enable) {
		tmp = FUNC0(HSW_AUD_CHICKENBIT);
		tmp |= SKL_AUD_CODEC_WAKE_SIGNAL;
		FUNC1(HSW_AUD_CHICKENBIT, tmp);
		FUNC6(1000, 1500);
	}

	FUNC4(kdev, cookie);
}