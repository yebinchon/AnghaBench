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
struct sun4i_layer_state {scalar_t__ uses_frontend; } ;
struct sun4i_layer {int /*<<< orphan*/  id; struct sun4i_backend* backend; } ;
struct sun4i_frontend {int dummy; } ;
struct sun4i_backend {struct sun4i_frontend* frontend; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_FORMAT_XRGB8888 ; 
 struct sun4i_layer* FUNC0 (struct drm_plane*) ; 
 struct sun4i_layer_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sun4i_backend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sun4i_backend*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sun4i_backend*,int /*<<< orphan*/ ,struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC5 (struct sun4i_backend*,int /*<<< orphan*/ ,struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC6 (struct sun4i_backend*,int /*<<< orphan*/ ,struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC7 (struct sun4i_backend*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sun4i_backend*,int /*<<< orphan*/ ,struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC9 (struct sun4i_frontend*) ; 
 int /*<<< orphan*/  FUNC10 (struct sun4i_frontend*) ; 
 int /*<<< orphan*/  FUNC11 (struct sun4i_frontend*,struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC12 (struct sun4i_frontend*,struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC13 (struct sun4i_frontend*,struct drm_plane*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct drm_plane *plane,
					      struct drm_plane_state *old_state)
{
	struct sun4i_layer_state *layer_state = FUNC1(plane->state);
	struct sun4i_layer *layer = FUNC0(plane);
	struct sun4i_backend *backend = layer->backend;
	struct sun4i_frontend *frontend = backend->frontend;

	FUNC2(backend, layer->id);

	if (layer_state->uses_frontend) {
		FUNC10(frontend);
		FUNC12(frontend, plane);
		FUNC11(frontend, plane);
		FUNC13(frontend, plane,
					      DRM_FORMAT_XRGB8888);
		FUNC7(backend, layer->id,
						    DRM_FORMAT_XRGB8888);
		FUNC9(frontend);
	} else {
		FUNC6(backend, layer->id, plane);
		FUNC4(backend, layer->id, plane);
	}

	FUNC5(backend, layer->id, plane);
	FUNC8(backend, layer->id, plane);
	FUNC3(backend, layer->id, true);
}