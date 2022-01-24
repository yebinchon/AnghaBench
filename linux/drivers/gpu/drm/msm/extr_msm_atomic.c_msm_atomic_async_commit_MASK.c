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
struct msm_kms {unsigned int pending_crtc_mask; TYPE_1__* funcs; int /*<<< orphan*/  commit_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_commit ) (struct msm_kms*) ;int /*<<< orphan*/  (* complete_commit ) (struct msm_kms*,unsigned int) ;int /*<<< orphan*/  (* wait_flush ) (struct msm_kms*,unsigned int) ;int /*<<< orphan*/  (* flush_commit ) (struct msm_kms*,unsigned int) ;int /*<<< orphan*/  (* enable_commit ) (struct msm_kms*) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_kms*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_kms*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_kms*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 

__attribute__((used)) static void FUNC13(struct msm_kms *kms, int crtc_idx)
{
	unsigned crtc_mask = FUNC0(crtc_idx);

	FUNC9(crtc_mask);

	FUNC1(&kms->commit_lock);

	if (!(kms->pending_crtc_mask & crtc_mask)) {
		FUNC2(&kms->commit_lock);
		goto out;
	}

	kms->pending_crtc_mask &= ~crtc_mask;

	kms->funcs->enable_commit(kms);

	/*
	 * Flush hardware updates:
	 */
	FUNC10(crtc_mask);
	kms->funcs->flush_commit(kms, crtc_mask);
	FUNC2(&kms->commit_lock);

	/*
	 * Wait for flush to complete:
	 */
	FUNC12(crtc_mask);
	kms->funcs->wait_flush(kms, crtc_mask);
	FUNC11(crtc_mask);

	FUNC1(&kms->commit_lock);
	kms->funcs->complete_commit(kms, crtc_mask);
	FUNC2(&kms->commit_lock);
	kms->funcs->disable_commit(kms);

out:
	FUNC8(crtc_mask);
}