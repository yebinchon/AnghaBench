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
 int /*<<< orphan*/  VLV_PCBR ; 
 unsigned long VLV_PCBR_ADDR_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct drm_i915_private *dev_priv)
{
	unsigned long pctx_addr = FUNC0(VLV_PCBR) & ~4095;

	FUNC1((pctx_addr >> VLV_PCBR_ADDR_SHIFT) == 0);
}