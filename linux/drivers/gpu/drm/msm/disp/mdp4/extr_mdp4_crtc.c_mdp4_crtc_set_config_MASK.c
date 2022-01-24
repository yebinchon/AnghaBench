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
typedef  int /*<<< orphan*/  uint32_t ;
struct mdp4_kms {int dummy; } ;
struct mdp4_crtc {int /*<<< orphan*/  dma; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mdp4_kms* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp4_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mdp4_crtc* FUNC3 (struct drm_crtc*) ; 

void FUNC4(struct drm_crtc *crtc, uint32_t config)
{
	struct mdp4_crtc *mdp4_crtc = FUNC3(crtc);
	struct mdp4_kms *mdp4_kms = FUNC1(crtc);

	FUNC2(mdp4_kms, FUNC0(mdp4_crtc->dma), config);
}