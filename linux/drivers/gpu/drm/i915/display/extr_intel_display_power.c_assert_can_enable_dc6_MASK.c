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
 int /*<<< orphan*/  DC_STATE_EN ; 
 int DC_STATE_EN_UPTO_DC6 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTIL_PIN_CTL ; 
 int UTIL_PIN_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	FUNC1(FUNC0(UTIL_PIN_CTL) & UTIL_PIN_ENABLE,
		  "Backlight is not disabled.\n");
	FUNC1((FUNC0(DC_STATE_EN) & DC_STATE_EN_UPTO_DC6),
		  "DC6 already programmed to be enabled.\n");

	FUNC2(dev_priv);
}