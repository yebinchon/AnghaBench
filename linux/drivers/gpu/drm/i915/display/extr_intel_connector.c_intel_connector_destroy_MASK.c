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
struct intel_connector {scalar_t__ port; int /*<<< orphan*/  panel; struct drm_connector* edid; struct drm_connector* detect_edid; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*) ; 
 struct intel_connector* FUNC6 (struct drm_connector*) ; 

void FUNC7(struct drm_connector *connector)
{
	struct intel_connector *intel_connector = FUNC6(connector);

	FUNC5(intel_connector->detect_edid);

	FUNC3(intel_connector);

	if (!FUNC0(intel_connector->edid))
		FUNC5(intel_connector->edid);

	FUNC4(&intel_connector->panel);

	FUNC1(connector);

	if (intel_connector->port)
		FUNC2(intel_connector->port);

	FUNC5(connector);
}