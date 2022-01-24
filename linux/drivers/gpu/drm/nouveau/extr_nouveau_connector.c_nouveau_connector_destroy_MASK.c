#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct drm_connector* name; scalar_t__ transfer; } ;
struct nouveau_connector {TYPE_1__ aux; struct drm_connector* edid; int /*<<< orphan*/  hpd; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 struct nouveau_connector* FUNC5 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct drm_connector *connector)
{
	struct nouveau_connector *nv_connector = FUNC5(connector);
	FUNC6(&nv_connector->hpd);
	FUNC4(nv_connector->edid);
	FUNC1(connector);
	FUNC0(connector);
	if (nv_connector->aux.transfer) {
		FUNC3(&nv_connector->aux);
		FUNC2(&nv_connector->aux);
		FUNC4(nv_connector->aux.name);
	}
	FUNC4(connector);
}