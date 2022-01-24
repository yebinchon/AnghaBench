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
 int /*<<< orphan*/  CTG_STOLEN_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  ELK_STOLEN_RESERVED ; 
 int G4X_STOLEN_RESERVED_ADDR1_MASK ; 
 int G4X_STOLEN_RESERVED_ADDR2_MASK ; 
 int G4X_STOLEN_RESERVED_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv,
				    resource_size_t *base,
				    resource_size_t *size)
{
	u32 reg_val = FUNC1(FUNC3(dev_priv) ?
				CTG_STOLEN_RESERVED :
				ELK_STOLEN_RESERVED);
	resource_size_t stolen_top = dev_priv->dsm.end + 1;

	FUNC0("%s_STOLEN_RESERVED = %08x\n",
			 FUNC3(dev_priv) ? "CTG" : "ELK", reg_val);

	if ((reg_val & G4X_STOLEN_RESERVED_ENABLE) == 0)
		return;

	/*
	 * Whether ILK really reuses the ELK register for this is unclear.
	 * Let's see if we catch anyone with this supposedly enabled on ILK.
	 */
	FUNC4(FUNC2(dev_priv, 5), "ILK stolen reserved found? 0x%08x\n",
	     reg_val);

	if (!(reg_val & G4X_STOLEN_RESERVED_ADDR2_MASK))
		return;

	*base = (reg_val & G4X_STOLEN_RESERVED_ADDR2_MASK) << 16;
	FUNC5((reg_val & G4X_STOLEN_RESERVED_ADDR1_MASK) < *base);

	*size = stolen_top - *base;
}