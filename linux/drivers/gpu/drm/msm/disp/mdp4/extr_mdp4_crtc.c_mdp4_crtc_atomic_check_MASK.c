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
struct mdp4_crtc {int /*<<< orphan*/  name; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct mdp4_crtc* FUNC1 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC2(struct drm_crtc *crtc,
		struct drm_crtc_state *state)
{
	struct mdp4_crtc *mdp4_crtc = FUNC1(crtc);
	FUNC0("%s: check", mdp4_crtc->name);
	// TODO anything else to check?
	return 0;
}