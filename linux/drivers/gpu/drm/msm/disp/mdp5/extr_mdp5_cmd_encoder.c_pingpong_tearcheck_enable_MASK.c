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
struct mdp5_kms {int /*<<< orphan*/  vsync_clk; } ;
struct mdp5_hw_mixer {int pp; } ;
struct drm_encoder {TYPE_1__* dev; int /*<<< orphan*/  crtc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  VSYNC_CLK_RATE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mdp5_kms* FUNC5 (struct drm_encoder*) ; 
 struct mdp5_hw_mixer* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mdp5_kms*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct drm_encoder *encoder)
{
	struct mdp5_kms *mdp5_kms = FUNC5(encoder);
	struct mdp5_hw_mixer *mixer = FUNC6(encoder->crtc);
	int pp_id = mixer->pp;
	int ret;

	ret = FUNC4(mdp5_kms->vsync_clk,
		FUNC3(mdp5_kms->vsync_clk, VSYNC_CLK_RATE));
	if (ret) {
		FUNC0(encoder->dev->dev,
			"vsync_clk clk_set_rate failed, %d\n", ret);
		return ret;
	}
	ret = FUNC2(mdp5_kms->vsync_clk);
	if (ret) {
		FUNC0(encoder->dev->dev,
			"vsync_clk clk_prepare_enable failed, %d\n", ret);
		return ret;
	}

	FUNC7(mdp5_kms, FUNC1(pp_id), 1);

	return 0;
}