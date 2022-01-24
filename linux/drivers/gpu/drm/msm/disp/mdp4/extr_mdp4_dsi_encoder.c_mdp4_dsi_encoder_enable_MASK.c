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
struct mdp4_kms {int dummy; } ;
struct mdp4_dsi_encoder {int enabled; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPC8 ; 
 int /*<<< orphan*/  INTF_DSI_VIDEO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MDP4_DMA_CONFIG_DEFLKR_EN ; 
 int MDP4_DMA_CONFIG_DITHER_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int MDP4_DMA_CONFIG_PACK_ALIGN_MSB ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_MDP4_DSI_ENABLE ; 
 struct mdp4_kms* FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mdp4_kms*,int /*<<< orphan*/ ,int) ; 
 struct mdp4_dsi_encoder* FUNC8 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC9(struct drm_encoder *encoder)
{
	struct mdp4_dsi_encoder *mdp4_dsi_encoder = FUNC8(encoder);
	struct mdp4_kms *mdp4_kms = FUNC4(encoder);

	if (mdp4_dsi_encoder->enabled)
		return;

	 FUNC5(encoder->crtc,
			MDP4_DMA_CONFIG_PACK_ALIGN_MSB |
			MDP4_DMA_CONFIG_DEFLKR_EN |
			MDP4_DMA_CONFIG_DITHER_EN |
			FUNC3(BPC8) |
			FUNC1(BPC8) |
			FUNC0(BPC8) |
			FUNC2(0x21));

	FUNC6(encoder->crtc, INTF_DSI_VIDEO, 0);

	FUNC7(mdp4_kms, REG_MDP4_DSI_ENABLE, 1);

	mdp4_dsi_encoder->enabled = true;
}