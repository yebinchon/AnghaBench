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
struct drm_crtc {int dummy; } ;
struct dpu_encoder_virt {int num_phys_encs; struct dpu_encoder_phys** phys_encs; int /*<<< orphan*/  enc_spinlock; struct drm_crtc* crtc; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* control_vblank_irq ) (struct dpu_encoder_phys*,int) ;} ;
struct dpu_encoder_phys {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_encoder_phys*,int) ; 
 struct dpu_encoder_virt* FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct drm_encoder *drm_enc,
					struct drm_crtc *crtc, bool enable)
{
	struct dpu_encoder_virt *dpu_enc = FUNC4(drm_enc);
	unsigned long lock_flags;
	int i;

	FUNC5(FUNC0(drm_enc), enable);

	FUNC1(&dpu_enc->enc_spinlock, lock_flags);
	if (dpu_enc->crtc != crtc) {
		FUNC2(&dpu_enc->enc_spinlock, lock_flags);
		return;
	}
	FUNC2(&dpu_enc->enc_spinlock, lock_flags);

	for (i = 0; i < dpu_enc->num_phys_encs; i++) {
		struct dpu_encoder_phys *phys = dpu_enc->phys_encs[i];

		if (phys && phys->ops.control_vblank_irq)
			phys->ops.control_vblank_irq(phys, enable);
	}
}