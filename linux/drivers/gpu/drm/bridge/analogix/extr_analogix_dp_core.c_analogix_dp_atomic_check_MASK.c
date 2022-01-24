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
struct drm_crtc_state {scalar_t__ self_refresh_active; } ;
struct drm_connector_state {int self_refresh_aware; int /*<<< orphan*/  crtc; } ;
struct drm_connector {int dummy; } ;
struct drm_atomic_state {int dummy; } ;
struct analogix_dp_device {int /*<<< orphan*/  psr_supported; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 struct drm_connector_state* FUNC1 (struct drm_atomic_state*,struct drm_connector*) ; 
 struct drm_crtc_state* FUNC2 (struct drm_atomic_state*,int /*<<< orphan*/ ) ; 
 struct analogix_dp_device* FUNC3 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC4(struct drm_connector *connector,
				    struct drm_atomic_state *state)
{
	struct analogix_dp_device *dp = FUNC3(connector);
	struct drm_connector_state *conn_state;
	struct drm_crtc_state *crtc_state;

	conn_state = FUNC1(state, connector);
	if (FUNC0(!conn_state))
		return -ENODEV;

	conn_state->self_refresh_aware = true;

	if (!conn_state->crtc)
		return 0;

	crtc_state = FUNC2(state, conn_state->crtc);
	if (!crtc_state)
		return 0;

	if (crtc_state->self_refresh_active && !dp->psr_supported)
		return -EINVAL;

	return 0;
}