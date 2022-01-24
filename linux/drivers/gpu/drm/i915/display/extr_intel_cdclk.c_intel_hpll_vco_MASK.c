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
typedef  int u8 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  HPLLVCO ; 
 int /*<<< orphan*/  HPLLVCO_MOBILE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 

__attribute__((used)) static unsigned int FUNC9(struct drm_i915_private *dev_priv)
{
	static const unsigned int blb_vco[8] = {
		[0] = 3200000,
		[1] = 4000000,
		[2] = 5333333,
		[3] = 4800000,
		[4] = 6400000,
	};
	static const unsigned int pnv_vco[8] = {
		[0] = 3200000,
		[1] = 4000000,
		[2] = 5333333,
		[3] = 4800000,
		[4] = 2666667,
	};
	static const unsigned int cl_vco[8] = {
		[0] = 3200000,
		[1] = 4000000,
		[2] = 5333333,
		[3] = 6400000,
		[4] = 3333333,
		[5] = 3566667,
		[6] = 4266667,
	};
	static const unsigned int elk_vco[8] = {
		[0] = 3200000,
		[1] = 4000000,
		[2] = 5333333,
		[3] = 4800000,
	};
	static const unsigned int ctg_vco[8] = {
		[0] = 3200000,
		[1] = 4000000,
		[2] = 5333333,
		[3] = 6400000,
		[4] = 2666667,
		[5] = 4266667,
	};
	const unsigned int *vco_table;
	unsigned int vco;
	u8 tmp = 0;

	/* FIXME other chipsets? */
	if (FUNC5(dev_priv))
		vco_table = ctg_vco;
	else if (FUNC4(dev_priv))
		vco_table = elk_vco;
	else if (FUNC6(dev_priv))
		vco_table = cl_vco;
	else if (FUNC8(dev_priv))
		vco_table = pnv_vco;
	else if (FUNC3(dev_priv))
		vco_table = blb_vco;
	else
		return 0;

	tmp = FUNC2(FUNC8(dev_priv) || FUNC7(dev_priv) ?
			HPLLVCO_MOBILE : HPLLVCO);

	vco = vco_table[tmp & 0x7];
	if (vco == 0)
		FUNC1("Bad HPLL VCO (HPLLVCO=0x%02x)\n", tmp);
	else
		FUNC0("HPLL VCO %u kHz\n", vco);

	return vco;
}