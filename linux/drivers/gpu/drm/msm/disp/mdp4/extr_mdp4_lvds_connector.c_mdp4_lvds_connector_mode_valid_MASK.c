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
struct mdp4_lvds_connector {struct drm_encoder* encoder; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long,long) ; 
 int MODE_CLOCK_RANGE ; 
 int MODE_OK ; 
 long FUNC1 (struct drm_encoder*,long) ; 
 struct mdp4_lvds_connector* FUNC2 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC3(struct drm_connector *connector,
				 struct drm_display_mode *mode)
{
	struct mdp4_lvds_connector *mdp4_lvds_connector =
			FUNC2(connector);
	struct drm_encoder *encoder = mdp4_lvds_connector->encoder;
	long actual, requested;

	requested = 1000 * mode->clock;
	actual = FUNC1(encoder, requested);

	FUNC0("requested=%ld, actual=%ld", requested, actual);

	if (actual != requested)
		return MODE_CLOCK_RANGE;

	return MODE_OK;
}