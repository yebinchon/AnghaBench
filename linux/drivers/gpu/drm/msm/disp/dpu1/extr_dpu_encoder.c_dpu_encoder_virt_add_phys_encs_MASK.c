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
struct dpu_encoder_virt {int num_phys_encs; struct dpu_encoder_phys* cur_master; struct dpu_encoder_phys* cur_slave; struct dpu_encoder_phys** phys_encs; } ;
struct dpu_encoder_phys {int dummy; } ;
struct dpu_enc_phys_init_params {scalar_t__ split_role; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dpu_encoder_phys**) ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_encoder_virt*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_virt*,char*,int) ; 
 int EINVAL ; 
 scalar_t__ ENC_ROLE_SLAVE ; 
 scalar_t__ FUNC3 (struct dpu_encoder_phys*) ; 
 int MSM_DISPLAY_CAP_CMD_MODE ; 
 int MSM_DISPLAY_CAP_VID_MODE ; 
 scalar_t__ NUM_PHYS_ENCODER_TYPES ; 
 int FUNC4 (struct dpu_encoder_phys*) ; 
 struct dpu_encoder_phys* FUNC5 (struct dpu_enc_phys_init_params*) ; 
 struct dpu_encoder_phys* FUNC6 (struct dpu_enc_phys_init_params*) ; 

__attribute__((used)) static int FUNC7(
		u32 display_caps,
		struct dpu_encoder_virt *dpu_enc,
		struct dpu_enc_phys_init_params *params)
{
	struct dpu_encoder_phys *enc = NULL;

	FUNC1(dpu_enc, "\n");

	/*
	 * We may create up to NUM_PHYS_ENCODER_TYPES physical encoder types
	 * in this function, check up-front.
	 */
	if (dpu_enc->num_phys_encs + NUM_PHYS_ENCODER_TYPES >=
			FUNC0(dpu_enc->phys_encs)) {
		FUNC2(dpu_enc, "too many physical encoders %d\n",
			  dpu_enc->num_phys_encs);
		return -EINVAL;
	}

	if (display_caps & MSM_DISPLAY_CAP_VID_MODE) {
		enc = FUNC6(params);

		if (FUNC3(enc)) {
			FUNC2(dpu_enc, "failed to init vid enc: %ld\n",
				FUNC4(enc));
			return enc == 0 ? -EINVAL : FUNC4(enc);
		}

		dpu_enc->phys_encs[dpu_enc->num_phys_encs] = enc;
		++dpu_enc->num_phys_encs;
	}

	if (display_caps & MSM_DISPLAY_CAP_CMD_MODE) {
		enc = FUNC5(params);

		if (FUNC3(enc)) {
			FUNC2(dpu_enc, "failed to init cmd enc: %ld\n",
				FUNC4(enc));
			return enc == 0 ? -EINVAL : FUNC4(enc);
		}

		dpu_enc->phys_encs[dpu_enc->num_phys_encs] = enc;
		++dpu_enc->num_phys_encs;
	}

	if (params->split_role == ENC_ROLE_SLAVE)
		dpu_enc->cur_slave = enc;
	else
		dpu_enc->cur_master = enc;

	return 0;
}