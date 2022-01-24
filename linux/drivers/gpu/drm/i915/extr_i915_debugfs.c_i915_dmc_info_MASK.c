#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int /*<<< orphan*/  private; } ;
struct intel_csr {int /*<<< orphan*/  version; int /*<<< orphan*/ * dmc_payload; int /*<<< orphan*/  fw_path; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; struct intel_csr csr; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
struct TYPE_11__ {scalar_t__ reg; } ;
typedef  TYPE_1__ i915_reg_t ;

/* Variables and functions */
 TYPE_1__ BXT_CSR_DC3_DC5_COUNT ; 
 TYPE_1__ CSR_HTP_SKL ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ CSR_SSP_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 TYPE_1__ SKL_CSR_DC3_DC5_COUNT ; 
 TYPE_1__ SKL_CSR_DC5_DC6_COUNT ; 
 TYPE_1__ TGL_DMC_DEBUG_DC5_COUNT ; 
 TYPE_1__ TGL_DMC_DEBUG_DC6_COUNT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct seq_file *m, void *unused)
{
	struct drm_i915_private *dev_priv = FUNC10(m->private);
	intel_wakeref_t wakeref;
	struct intel_csr *csr;
	i915_reg_t dc5_reg, dc6_reg = {};

	if (!FUNC3(dev_priv))
		return -ENODEV;

	csr = &dev_priv->csr;

	wakeref = FUNC8(&dev_priv->runtime_pm);

	FUNC11(m, "fw loaded: %s\n", FUNC12(csr->dmc_payload != NULL));
	FUNC11(m, "path: %s\n", csr->fw_path);

	if (!csr->dmc_payload)
		goto out;

	FUNC11(m, "version: %d.%d\n", FUNC1(csr->version),
		   FUNC2(csr->version));

	if (FUNC5(dev_priv) >= 12) {
		dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
		dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
	} else {
		dc5_reg = FUNC6(dev_priv) ? BXT_CSR_DC3_DC5_COUNT :
						 SKL_CSR_DC3_DC5_COUNT;
		if (!FUNC7(dev_priv))
			dc6_reg = SKL_CSR_DC5_DC6_COUNT;
	}

	FUNC11(m, "DC3 -> DC5 count: %d\n", FUNC4(dc5_reg));
	if (dc6_reg.reg)
		FUNC11(m, "DC5 -> DC6 count: %d\n", FUNC4(dc6_reg));

out:
	FUNC11(m, "program base: 0x%08x\n", FUNC4(FUNC0(0)));
	FUNC11(m, "ssp base: 0x%08x\n", FUNC4(CSR_SSP_BASE));
	FUNC11(m, "htp: 0x%08x\n", FUNC4(CSR_HTP_SKL));

	FUNC9(&dev_priv->runtime_pm, wakeref);

	return 0;
}