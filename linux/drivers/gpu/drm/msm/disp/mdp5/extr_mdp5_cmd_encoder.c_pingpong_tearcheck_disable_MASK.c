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
struct mdp5_kms {int /*<<< orphan*/  vsync_clk; } ;
struct mdp5_hw_mixer {int pp; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mdp5_kms* FUNC2 (struct drm_encoder*) ; 
 struct mdp5_hw_mixer* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp5_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct mdp5_kms *mdp5_kms = FUNC2(encoder);
	struct mdp5_hw_mixer *mixer = FUNC3(encoder->crtc);
	int pp_id = mixer->pp;

	FUNC4(mdp5_kms, FUNC0(pp_id), 0);
	FUNC1(mdp5_kms->vsync_clk);
}