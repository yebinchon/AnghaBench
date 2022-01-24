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
struct radeon_encoder {int /*<<< orphan*/  base; struct radeon_encoder* mst_encoder; } ;
struct radeon_connector {int /*<<< orphan*/  base; struct radeon_connector* mst_encoder; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_encoder*) ; 
 struct radeon_encoder* FUNC3 (struct drm_connector*) ; 

__attribute__((used)) static void
FUNC4(struct drm_connector *connector)
{
	struct radeon_connector *radeon_connector = FUNC3(connector);
	struct radeon_encoder *radeon_encoder = radeon_connector->mst_encoder;

	FUNC1(&radeon_encoder->base);
	FUNC2(radeon_encoder);
	FUNC0(connector);
	FUNC2(radeon_connector);
}