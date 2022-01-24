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
struct omap_dss_device {TYPE_1__* ops; } ;
struct omap_connector {struct omap_dss_device* output; struct omap_dss_device* hpd; } ;
struct drm_connector {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unregister_hpd_cb ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*) ; 
 struct omap_connector* FUNC6 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC7(struct drm_connector *connector)
{
	struct omap_connector *omap_connector = FUNC6(connector);

	FUNC0("%s", connector->name);

	if (omap_connector->hpd) {
		struct omap_dss_device *hpd = omap_connector->hpd;

		hpd->ops->unregister_hpd_cb(hpd);
		FUNC4(hpd);
		omap_connector->hpd = NULL;
	}

	FUNC2(connector);
	FUNC1(connector);

	FUNC4(omap_connector->output);

	FUNC3(omap_connector);
}