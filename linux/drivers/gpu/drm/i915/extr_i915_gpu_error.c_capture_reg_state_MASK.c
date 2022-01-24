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
struct intel_uncore {int dummy; } ;
struct i915_gpu_state {int ngtier; void* pgtbl_er; void* eir; void* ier; void** gtier; void* gac_eco; void* gam_ecochk; void* ccid; void* done_reg; void* error; void* derrmr; void* forcewake; void* gfx_mode; void* gab_ctl; void* fault_data1; void* fault_data0; void* err_int; struct drm_i915_private* i915; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEIER ; 
 int /*<<< orphan*/  DERRMR ; 
 int /*<<< orphan*/  DONE_REG ; 
 int /*<<< orphan*/  EIR ; 
 int /*<<< orphan*/  ERROR_GEN6 ; 
 int /*<<< orphan*/  FORCEWAKE ; 
 int /*<<< orphan*/  FORCEWAKE_MT ; 
 int /*<<< orphan*/  FORCEWAKE_VLV ; 
 int /*<<< orphan*/  GAB_CTL ; 
 int /*<<< orphan*/  GAC_ECO_BITS ; 
 int /*<<< orphan*/  GAM_ECOCHK ; 
 int /*<<< orphan*/  GEN11_CRYPTO_RSVD_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_GPM_WGBOXPERF_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_GUC_SG_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_GUNIT_CSME_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_RENDER_COPY_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_VCS_VECS_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN12_FAULT_TLB_DATA0 ; 
 int /*<<< orphan*/  GEN12_FAULT_TLB_DATA1 ; 
 int /*<<< orphan*/  GEN2_IER ; 
 int /*<<< orphan*/  GEN7_ERR_INT ; 
 int /*<<< orphan*/  GEN8_DE_MISC_IER ; 
 int /*<<< orphan*/  GEN8_FAULT_TLB_DATA0 ; 
 int /*<<< orphan*/  GEN8_FAULT_TLB_DATA1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFX_MODE ; 
 int /*<<< orphan*/  GTIER ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int,int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PGTBL_ER ; 
 int /*<<< orphan*/  RENDER_RING_BASE ; 
 int /*<<< orphan*/  VLV_IER ; 
 void* FUNC7 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct intel_uncore*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct i915_gpu_state *error)
{
	struct drm_i915_private *i915 = error->i915;
	struct intel_uncore *uncore = &i915->uncore;
	int i;

	/* General organization
	 * 1. Registers specific to a single generation
	 * 2. Registers which belong to multiple generations
	 * 3. Feature specific registers.
	 * 4. Everything else
	 * Please try to follow the order.
	 */

	/* 1: Registers specific to a single generation */
	if (FUNC6(i915)) {
		error->gtier[0] = FUNC7(uncore, GTIER);
		error->ier = FUNC7(uncore, VLV_IER);
		error->forcewake = FUNC9(uncore, FORCEWAKE_VLV);
	}

	if (FUNC4(i915, 7))
		error->err_int = FUNC7(uncore, GEN7_ERR_INT);

	if (FUNC3(i915) >= 12) {
		error->fault_data0 = FUNC7(uncore,
						       GEN12_FAULT_TLB_DATA0);
		error->fault_data1 = FUNC7(uncore,
						       GEN12_FAULT_TLB_DATA1);
	} else if (FUNC3(i915) >= 8) {
		error->fault_data0 = FUNC7(uncore,
						       GEN8_FAULT_TLB_DATA0);
		error->fault_data1 = FUNC7(uncore,
						       GEN8_FAULT_TLB_DATA1);
	}

	if (FUNC4(i915, 6)) {
		error->forcewake = FUNC9(uncore, FORCEWAKE);
		error->gab_ctl = FUNC7(uncore, GAB_CTL);
		error->gfx_mode = FUNC7(uncore, GFX_MODE);
	}

	/* 2: Registers which belong to multiple generations */
	if (FUNC3(i915) >= 7)
		error->forcewake = FUNC9(uncore, FORCEWAKE_MT);

	if (FUNC3(i915) >= 6) {
		error->derrmr = FUNC7(uncore, DERRMR);
		if (FUNC3(i915) < 12) {
			error->error = FUNC7(uncore, ERROR_GEN6);
			error->done_reg = FUNC7(uncore, DONE_REG);
		}
	}

	if (FUNC3(i915) >= 5)
		error->ccid = FUNC7(uncore, FUNC0(RENDER_RING_BASE));

	/* 3: Feature specific registers */
	if (FUNC5(i915, 6, 7)) {
		error->gam_ecochk = FUNC7(uncore, GAM_ECOCHK);
		error->gac_eco = FUNC7(uncore, GAC_ECO_BITS);
	}

	/* 4: Everything else */
	if (FUNC3(i915) >= 11) {
		error->ier = FUNC7(uncore, GEN8_DE_MISC_IER);
		error->gtier[0] =
			FUNC7(uncore,
					  GEN11_RENDER_COPY_INTR_ENABLE);
		error->gtier[1] =
			FUNC7(uncore, GEN11_VCS_VECS_INTR_ENABLE);
		error->gtier[2] =
			FUNC7(uncore, GEN11_GUC_SG_INTR_ENABLE);
		error->gtier[3] =
			FUNC7(uncore,
					  GEN11_GPM_WGBOXPERF_INTR_ENABLE);
		error->gtier[4] =
			FUNC7(uncore,
					  GEN11_CRYPTO_RSVD_INTR_ENABLE);
		error->gtier[5] =
			FUNC7(uncore,
					  GEN11_GUNIT_CSME_INTR_ENABLE);
		error->ngtier = 6;
	} else if (FUNC3(i915) >= 8) {
		error->ier = FUNC7(uncore, GEN8_DE_MISC_IER);
		for (i = 0; i < 4; i++)
			error->gtier[i] = FUNC7(uncore,
							    FUNC1(i));
		error->ngtier = 4;
	} else if (FUNC2(i915)) {
		error->ier = FUNC7(uncore, DEIER);
		error->gtier[0] = FUNC7(uncore, GTIER);
		error->ngtier = 1;
	} else if (FUNC4(i915, 2)) {
		error->ier = FUNC8(uncore, GEN2_IER);
	} else if (!FUNC6(i915)) {
		error->ier = FUNC7(uncore, GEN2_IER);
	}
	error->eir = FUNC7(uncore, EIR);
	error->pgtbl_er = FUNC7(uncore, PGTBL_ER);
}