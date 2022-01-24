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
struct radeon_connector {struct drm_connector* con_priv; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 struct radeon_connector* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC5(struct drm_connector *connector)
{
	struct radeon_connector *radeon_connector = FUNC4(connector);

	FUNC3(connector);
	FUNC2(radeon_connector->con_priv);
	FUNC1(connector);
	FUNC0(connector);
	FUNC2(connector);
}