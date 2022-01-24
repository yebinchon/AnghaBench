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
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VLV_REF_DW13 ; 
 int FUNC1 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv, enum pipe
		pipe)
{
	u32 reg_val;

	/*
	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
	 * and set it to a reasonable value instead.
	 */
	reg_val = FUNC1(dev_priv, pipe, FUNC0(1));
	reg_val &= 0xffffff00;
	reg_val |= 0x00000030;
	FUNC2(dev_priv, pipe, FUNC0(1), reg_val);

	reg_val = FUNC1(dev_priv, pipe, VLV_REF_DW13);
	reg_val &= 0x00ffffff;
	reg_val |= 0x8c000000;
	FUNC2(dev_priv, pipe, VLV_REF_DW13, reg_val);

	reg_val = FUNC1(dev_priv, pipe, FUNC0(1));
	reg_val &= 0xffffff00;
	FUNC2(dev_priv, pipe, FUNC0(1), reg_val);

	reg_val = FUNC1(dev_priv, pipe, VLV_REF_DW13);
	reg_val &= 0x00ffffff;
	reg_val |= 0xb0000000;
	FUNC2(dev_priv, pipe, VLV_REF_DW13, reg_val);
}