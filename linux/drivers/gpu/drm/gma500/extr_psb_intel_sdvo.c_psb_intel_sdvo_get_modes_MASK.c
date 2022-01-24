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
struct psb_intel_sdvo_connector {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  probed_modes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct psb_intel_sdvo_connector*) ; 
 scalar_t__ FUNC1 (struct psb_intel_sdvo_connector*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*) ; 
 struct psb_intel_sdvo_connector* FUNC6 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC7(struct drm_connector *connector)
{
	struct psb_intel_sdvo_connector *psb_intel_sdvo_connector = FUNC6(connector);

	if (FUNC1(psb_intel_sdvo_connector))
		FUNC5(connector);
	else if (FUNC0(psb_intel_sdvo_connector))
		FUNC4(connector);
	else
		FUNC3(connector);

	return !FUNC2(&connector->probed_modes);
}