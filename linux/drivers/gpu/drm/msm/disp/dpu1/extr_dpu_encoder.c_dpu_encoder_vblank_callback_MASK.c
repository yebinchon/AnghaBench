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
struct dpu_encoder_virt {int /*<<< orphan*/  enc_spinlock; scalar_t__ crtc; } ;
struct dpu_encoder_phys {int /*<<< orphan*/  vsync_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dpu_encoder_virt* FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *drm_enc,
		struct dpu_encoder_phys *phy_enc)
{
	struct dpu_encoder_virt *dpu_enc = NULL;
	unsigned long lock_flags;

	if (!drm_enc || !phy_enc)
		return;

	FUNC0("encoder_vblank_callback");
	dpu_enc = FUNC6(drm_enc);

	FUNC4(&dpu_enc->enc_spinlock, lock_flags);
	if (dpu_enc->crtc)
		FUNC3(dpu_enc->crtc);
	FUNC5(&dpu_enc->enc_spinlock, lock_flags);

	FUNC2(&phy_enc->vsync_cnt);
	FUNC1("encoder_vblank_callback");
}