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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLV_GTLC_ALLOWWAKEACK ; 
 int /*<<< orphan*/  VLV_GTLC_ALLOWWAKEREQ ; 
 int /*<<< orphan*/  VLV_GTLC_WAKE_CTRL ; 
 int FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct drm_i915_private *dev_priv, bool allow)
{
	u32 mask;
	u32 val;
	int err;

	val = FUNC1(VLV_GTLC_WAKE_CTRL);
	val &= ~VLV_GTLC_ALLOWWAKEREQ;
	if (allow)
		val |= VLV_GTLC_ALLOWWAKEREQ;
	FUNC2(VLV_GTLC_WAKE_CTRL, val);
	FUNC3(VLV_GTLC_WAKE_CTRL);

	mask = VLV_GTLC_ALLOWWAKEACK;
	val = allow ? mask : 0;

	err = FUNC4(dev_priv, mask, val);
	if (err)
		FUNC0("timeout disabling GT waking\n");

	return err;
}