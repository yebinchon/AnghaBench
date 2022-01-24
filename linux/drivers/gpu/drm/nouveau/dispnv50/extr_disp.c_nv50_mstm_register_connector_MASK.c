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
struct nouveau_drm {TYPE_1__* fbcon; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  helper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct drm_connector*) ; 
 struct nouveau_drm* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct drm_connector *connector)
{
	struct nouveau_drm *drm = FUNC2(connector->dev);

	FUNC1(&drm->fbcon->helper, connector);

	FUNC0(connector);
}