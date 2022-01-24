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
struct radeon_connector {TYPE_1__* ddc_bus; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int has_aux; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct radeon_connector* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC2(struct drm_connector *connector)
{
	struct radeon_connector *radeon_connector = FUNC1(connector);

	if (radeon_connector->ddc_bus && radeon_connector->ddc_bus->has_aux) {
		FUNC0(&radeon_connector->ddc_bus->aux);
		radeon_connector->ddc_bus->has_aux = false;
	}
}