#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int end; } ;
struct drm_i915_private {TYPE_1__ dsm; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  GEN6_STOLEN_RESERVED ; 
 int GEN6_STOLEN_RESERVED_ADDR_MASK ; 
 int GEN6_STOLEN_RESERVED_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct drm_i915_private *dev_priv,
				    resource_size_t *base,
				    resource_size_t *size)
{
	u32 reg_val = FUNC1(GEN6_STOLEN_RESERVED);
	resource_size_t stolen_top = dev_priv->dsm.end + 1;

	FUNC0("GEN6_STOLEN_RESERVED = %08x\n", reg_val);

	if (!(reg_val & GEN6_STOLEN_RESERVED_ENABLE))
		return;

	if (!(reg_val & GEN6_STOLEN_RESERVED_ADDR_MASK))
		return;

	*base = reg_val & GEN6_STOLEN_RESERVED_ADDR_MASK;
	*size = stolen_top - *base;
}