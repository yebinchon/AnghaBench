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
struct sun8i_ui_layer {int /*<<< orphan*/  overlay; int /*<<< orphan*/  channel; struct sun8i_mixer* mixer; } ;
struct sun8i_mixer {int dummy; } ;
struct drm_plane_state {unsigned int normalized_zpos; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_2__ {unsigned int normalized_zpos; int /*<<< orphan*/  visible; } ;

/* Variables and functions */
 struct sun8i_ui_layer* FUNC0 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC1 (struct sun8i_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sun8i_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC3 (struct sun8i_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_plane*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sun8i_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_plane*) ; 

__attribute__((used)) static void FUNC5(struct drm_plane *plane,
					 struct drm_plane_state *old_state)
{
	struct sun8i_ui_layer *layer = FUNC0(plane);
	unsigned int zpos = plane->state->normalized_zpos;
	unsigned int old_zpos = old_state->normalized_zpos;
	struct sun8i_mixer *mixer = layer->mixer;

	if (!plane->state->visible) {
		FUNC1(mixer, layer->channel,
				      layer->overlay, false, 0, old_zpos);
		return;
	}

	FUNC3(mixer, layer->channel,
				    layer->overlay, plane, zpos);
	FUNC4(mixer, layer->channel,
				      layer->overlay, plane);
	FUNC2(mixer, layer->channel,
				     layer->overlay, plane);
	FUNC1(mixer, layer->channel, layer->overlay,
			      true, zpos, old_zpos);
}