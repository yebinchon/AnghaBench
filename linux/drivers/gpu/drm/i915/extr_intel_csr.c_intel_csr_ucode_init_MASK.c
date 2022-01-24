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
struct intel_csr {int /*<<< orphan*/  work; int /*<<< orphan*/ * fw_path; scalar_t__ required_version; int /*<<< orphan*/  max_fw_size; } ;
struct drm_i915_private {struct intel_csr csr; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dmc_firmware_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  BXT_CSR_MAX_FW_SIZE ; 
 int /*<<< orphan*/ * BXT_CSR_PATH ; 
 scalar_t__ BXT_CSR_VERSION_REQUIRED ; 
 int /*<<< orphan*/  CNL_CSR_MAX_FW_SIZE ; 
 int /*<<< orphan*/ * CNL_CSR_PATH ; 
 scalar_t__ CNL_CSR_VERSION_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GEN12_CSR_MAX_FW_SIZE ; 
 int /*<<< orphan*/  GLK_CSR_MAX_FW_SIZE ; 
 int /*<<< orphan*/ * GLK_CSR_PATH ; 
 scalar_t__ GLK_CSR_VERSION_REQUIRED ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  ICL_CSR_MAX_FW_SIZE ; 
 int /*<<< orphan*/ * ICL_CSR_PATH ; 
 scalar_t__ ICL_CSR_VERSION_REQUIRED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  KBL_CSR_MAX_FW_SIZE ; 
 int /*<<< orphan*/ * KBL_CSR_PATH ; 
 scalar_t__ KBL_CSR_VERSION_REQUIRED ; 
 int /*<<< orphan*/  SKL_CSR_MAX_FW_SIZE ; 
 int /*<<< orphan*/ * SKL_CSR_PATH ; 
 scalar_t__ SKL_CSR_VERSION_REQUIRED ; 
 int /*<<< orphan*/ * TGL_CSR_PATH ; 
 scalar_t__ TGL_CSR_VERSION_REQUIRED ; 
 int /*<<< orphan*/  csr_load_work_fn ; 
 TYPE_1__ i915_modparams ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(struct drm_i915_private *dev_priv)
{
	struct intel_csr *csr = &dev_priv->csr;

	FUNC3(&dev_priv->csr.work, csr_load_work_fn);

	if (!FUNC2(dev_priv))
		return;

	/*
	 * Obtain a runtime pm reference, until CSR is loaded, to avoid entering
	 * runtime-suspend.
	 *
	 * On error, we return with the rpm wakeref held to prevent runtime
	 * suspend as runtime suspend *requires* a working CSR for whatever
	 * reason.
	 */
	FUNC12(dev_priv);

	if (FUNC4(dev_priv) >= 12) {
		csr->fw_path = TGL_CSR_PATH;
		csr->required_version = TGL_CSR_VERSION_REQUIRED;
		/* Allow to load fw via parameter using the last known size */
		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
	} else if (FUNC9(dev_priv, 11)) {
		csr->fw_path = ICL_CSR_PATH;
		csr->required_version = ICL_CSR_VERSION_REQUIRED;
		csr->max_fw_size = ICL_CSR_MAX_FW_SIZE;
	} else if (FUNC6(dev_priv)) {
		csr->fw_path = CNL_CSR_PATH;
		csr->required_version = CNL_CSR_VERSION_REQUIRED;
		csr->max_fw_size = CNL_CSR_MAX_FW_SIZE;
	} else if (FUNC8(dev_priv)) {
		csr->fw_path = GLK_CSR_PATH;
		csr->required_version = GLK_CSR_VERSION_REQUIRED;
		csr->max_fw_size = GLK_CSR_MAX_FW_SIZE;
	} else if (FUNC10(dev_priv) || FUNC7(dev_priv)) {
		csr->fw_path = KBL_CSR_PATH;
		csr->required_version = KBL_CSR_VERSION_REQUIRED;
		csr->max_fw_size = KBL_CSR_MAX_FW_SIZE;
	} else if (FUNC11(dev_priv)) {
		csr->fw_path = SKL_CSR_PATH;
		csr->required_version = SKL_CSR_VERSION_REQUIRED;
		csr->max_fw_size = SKL_CSR_MAX_FW_SIZE;
	} else if (FUNC5(dev_priv)) {
		csr->fw_path = BXT_CSR_PATH;
		csr->required_version = BXT_CSR_VERSION_REQUIRED;
		csr->max_fw_size = BXT_CSR_MAX_FW_SIZE;
	}

	if (i915_modparams.dmc_firmware_path) {
		if (FUNC14(i915_modparams.dmc_firmware_path) == 0) {
			csr->fw_path = NULL;
			FUNC1("Disabling CSR firmware and runtime PM\n");
			return;
		}

		csr->fw_path = i915_modparams.dmc_firmware_path;
		/* Bypass version check for firmware override. */
		csr->required_version = 0;
	}

	if (csr->fw_path == NULL) {
		FUNC0("No known CSR firmware for platform, disabling runtime PM\n");
		return;
	}

	FUNC0("Loading %s\n", csr->fw_path);
	FUNC13(&dev_priv->csr.work);
}