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
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct dm_crtc_state {scalar_t__ stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc_state*) ; 
 struct dm_crtc_state* FUNC3 (struct drm_crtc_state*) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc,
				  struct drm_crtc_state *state)
{
	struct dm_crtc_state *cur = FUNC3(state);

	/* TODO Destroy dc_stream objects are stream object is flattened */
	if (cur->stream)
		FUNC1(cur->stream);


	FUNC0(state);


	FUNC2(state);
}