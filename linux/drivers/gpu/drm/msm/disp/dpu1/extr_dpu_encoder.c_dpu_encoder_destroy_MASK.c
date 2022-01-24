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
struct drm_encoder {int dummy; } ;
struct dpu_encoder_virt {int num_phys_encs; int /*<<< orphan*/  enc_lock; struct dpu_encoder_phys** phys_encs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct dpu_encoder_phys*) ;} ;
struct dpu_encoder_phys {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_virt*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_virt*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dpu_encoder_phys*) ; 
 struct dpu_encoder_virt* FUNC8 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC9(struct drm_encoder *drm_enc)
{
	struct dpu_encoder_virt *dpu_enc = NULL;
	int i = 0;

	if (!drm_enc) {
		FUNC1("invalid encoder\n");
		return;
	}

	dpu_enc = FUNC8(drm_enc);
	FUNC0(dpu_enc, "\n");

	FUNC5(&dpu_enc->enc_lock);

	for (i = 0; i < dpu_enc->num_phys_encs; i++) {
		struct dpu_encoder_phys *phys = dpu_enc->phys_encs[i];

		if (phys && phys->ops.destroy) {
			phys->ops.destroy(phys);
			--dpu_enc->num_phys_encs;
			dpu_enc->phys_encs[i] = NULL;
		}
	}

	if (dpu_enc->num_phys_encs)
		FUNC2(dpu_enc, "expected 0 num_phys_encs not %d\n",
				dpu_enc->num_phys_encs);
	dpu_enc->num_phys_encs = 0;
	FUNC6(&dpu_enc->enc_lock);

	FUNC3(drm_enc);
	FUNC4(&dpu_enc->enc_lock);
}