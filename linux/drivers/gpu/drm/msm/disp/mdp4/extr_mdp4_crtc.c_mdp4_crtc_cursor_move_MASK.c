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
struct TYPE_2__ {int x; int y; int /*<<< orphan*/  lock; } ;
struct mdp4_crtc {TYPE_1__ cursor; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PENDING_CURSOR ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp4_crtc* FUNC4 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC5(struct drm_crtc *crtc, int x, int y)
{
	struct mdp4_crtc *mdp4_crtc = FUNC4(crtc);
	unsigned long flags;

	FUNC2(&mdp4_crtc->cursor.lock, flags);
	mdp4_crtc->cursor.x = x;
	mdp4_crtc->cursor.y = y;
	FUNC3(&mdp4_crtc->cursor.lock, flags);

	FUNC0(crtc);
	FUNC1(crtc, PENDING_CURSOR);

	return 0;
}