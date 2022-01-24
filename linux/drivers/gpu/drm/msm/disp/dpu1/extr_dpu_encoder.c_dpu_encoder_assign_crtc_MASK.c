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
struct drm_encoder {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct dpu_encoder_virt {int /*<<< orphan*/  enc_spinlock; struct drm_crtc* crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dpu_encoder_virt* FUNC3 (struct drm_encoder*) ; 

void FUNC4(struct drm_encoder *drm_enc, struct drm_crtc *crtc)
{
	struct dpu_encoder_virt *dpu_enc = FUNC3(drm_enc);
	unsigned long lock_flags;

	FUNC1(&dpu_enc->enc_spinlock, lock_flags);
	/* crtc should always be cleared before re-assigning */
	FUNC0(crtc && dpu_enc->crtc);
	dpu_enc->crtc = crtc;
	FUNC2(&dpu_enc->enc_spinlock, lock_flags);
}