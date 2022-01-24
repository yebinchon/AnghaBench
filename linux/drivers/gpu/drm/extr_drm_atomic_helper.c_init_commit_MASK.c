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
struct drm_crtc_commit {struct drm_crtc* crtc; int /*<<< orphan*/  ref; int /*<<< orphan*/  commit_entry; int /*<<< orphan*/  cleanup_done; int /*<<< orphan*/  hw_done; int /*<<< orphan*/  flip_done; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc_commit *commit, struct drm_crtc *crtc)
{
	FUNC1(&commit->flip_done);
	FUNC1(&commit->hw_done);
	FUNC1(&commit->cleanup_done);
	FUNC0(&commit->commit_entry);
	FUNC2(&commit->ref);
	commit->crtc = crtc;
}