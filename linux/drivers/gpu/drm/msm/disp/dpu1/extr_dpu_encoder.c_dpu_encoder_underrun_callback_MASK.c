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
struct dpu_encoder_phys {int /*<<< orphan*/  underrun_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_encoder *drm_enc,
		struct dpu_encoder_phys *phy_enc)
{
	if (!phy_enc)
		return;

	FUNC0("encoder_underrun_callback");
	FUNC3(&phy_enc->underrun_cnt);
	FUNC5(FUNC2(drm_enc),
				  FUNC4(&phy_enc->underrun_cnt));
	FUNC1("encoder_underrun_callback");
}