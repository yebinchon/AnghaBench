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
struct nouveau_connector {int /*<<< orphan*/  native_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 struct nouveau_connector* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_encoder*,struct drm_crtc_state*,struct drm_connector_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct drm_encoder *encoder,
		       struct drm_crtc_state *crtc_state,
		       struct drm_connector_state *conn_state)
{
	struct nouveau_connector *nv_connector =
		FUNC0(conn_state->connector);
	return FUNC1(encoder, crtc_state, conn_state,
					   nv_connector->native_mode);
}