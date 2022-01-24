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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int VLV_GTLC_ALLOWWAKEERR ; 
 int /*<<< orphan*/  VLV_GTLC_PW_STATUS ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	if (!(FUNC1(VLV_GTLC_PW_STATUS) & VLV_GTLC_ALLOWWAKEERR))
		return;

	FUNC0("GT register access while GT waking disabled\n");
	FUNC2(VLV_GTLC_PW_STATUS, VLV_GTLC_ALLOWWAKEERR);
}