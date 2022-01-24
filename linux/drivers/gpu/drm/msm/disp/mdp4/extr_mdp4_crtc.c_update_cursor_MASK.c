#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct msm_kms {int /*<<< orphan*/  aspace; } ;
struct TYPE_3__ {struct msm_kms base; } ;
struct mdp4_kms {int blank_cursor_iova; TYPE_1__ base; } ;
struct TYPE_4__ {int stale; int next_iova; int /*<<< orphan*/  lock; int /*<<< orphan*/  y; int /*<<< orphan*/  x; struct drm_gem_object* scanout_bo; int /*<<< orphan*/  height; int /*<<< orphan*/  width; struct drm_gem_object* next_bo; } ;
struct mdp4_crtc {int dma; TYPE_2__ cursor; int /*<<< orphan*/  unref_cursor_work; } ;
struct drm_gem_object {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef  enum mdp4_dma { ____Placeholder_mdp4_dma } mdp4_dma ;

/* Variables and functions */
 int /*<<< orphan*/  CURSOR_ARGB ; 
 int MDP4_DMA_CURSOR_BLEND_CONFIG_CURSOR_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_gem_object*) ; 
 struct mdp4_kms* FUNC11 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC12 (struct mdp4_kms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_gem_object*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp4_crtc* FUNC16 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC17(struct drm_crtc *crtc)
{
	struct mdp4_crtc *mdp4_crtc = FUNC16(crtc);
	struct mdp4_kms *mdp4_kms = FUNC11(crtc);
	struct msm_kms *kms = &mdp4_kms->base.base;
	enum mdp4_dma dma = mdp4_crtc->dma;
	unsigned long flags;

	FUNC14(&mdp4_crtc->cursor.lock, flags);
	if (mdp4_crtc->cursor.stale) {
		struct drm_gem_object *next_bo = mdp4_crtc->cursor.next_bo;
		struct drm_gem_object *prev_bo = mdp4_crtc->cursor.scanout_bo;
		uint64_t iova = mdp4_crtc->cursor.next_iova;

		if (next_bo) {
			/* take a obj ref + iova ref when we start scanning out: */
			FUNC10(next_bo);
			FUNC13(next_bo, kms->aspace, &iova);

			/* enable cursor: */
			FUNC12(mdp4_kms, FUNC8(dma),
					FUNC4(mdp4_crtc->cursor.width) |
					FUNC3(mdp4_crtc->cursor.height));
			FUNC12(mdp4_kms, FUNC5(dma), iova);
			FUNC12(mdp4_kms, FUNC6(dma),
					FUNC0(CURSOR_ARGB) |
					MDP4_DMA_CURSOR_BLEND_CONFIG_CURSOR_EN);
		} else {
			/* disable cursor: */
			FUNC12(mdp4_kms, FUNC5(dma),
					mdp4_kms->blank_cursor_iova);
		}

		/* and drop the iova ref + obj rev when done scanning out: */
		if (prev_bo)
			FUNC9(&mdp4_crtc->unref_cursor_work, prev_bo);

		mdp4_crtc->cursor.scanout_bo = next_bo;
		mdp4_crtc->cursor.stale = false;
	}

	FUNC12(mdp4_kms, FUNC7(dma),
			FUNC1(mdp4_crtc->cursor.x) |
			FUNC2(mdp4_crtc->cursor.y));

	FUNC15(&mdp4_crtc->cursor.lock, flags);
}