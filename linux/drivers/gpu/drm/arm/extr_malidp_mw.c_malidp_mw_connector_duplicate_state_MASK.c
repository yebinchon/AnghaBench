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
struct drm_connector_state {int dummy; } ;
struct malidp_mw_connector_state {struct drm_connector_state base; int /*<<< orphan*/  rgb2yuv_initialized; int /*<<< orphan*/  rgb2yuv_coeffs; } ;
struct drm_connector {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_connector_state*) ; 
 struct malidp_mw_connector_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct malidp_mw_connector_state* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_connector_state *
FUNC4(struct drm_connector *connector)
{
	struct malidp_mw_connector_state *mw_state, *mw_current_state;

	if (FUNC0(!connector->state))
		return NULL;

	mw_state = FUNC2(sizeof(*mw_state), GFP_KERNEL);
	if (!mw_state)
		return NULL;

	mw_current_state = FUNC3(connector->state);
	mw_state->rgb2yuv_coeffs = mw_current_state->rgb2yuv_coeffs;
	mw_state->rgb2yuv_initialized = mw_current_state->rgb2yuv_initialized;

	FUNC1(connector, &mw_state->base);

	return &mw_state->base;
}