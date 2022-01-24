#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_encoder {TYPE_1__* funcs; } ;
struct drm_connector {TYPE_2__* funcs; } ;
struct device {int dummy; } ;
struct cdn_dp_device {int /*<<< orphan*/ * edid; int /*<<< orphan*/  fw; scalar_t__ fw_loaded; int /*<<< orphan*/  event_work; struct drm_connector connector; struct drm_encoder encoder; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (struct drm_connector*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) (struct drm_encoder*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 struct cdn_dp_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC8(struct device *dev, struct device *master, void *data)
{
	struct cdn_dp_device *dp = FUNC2(dev);
	struct drm_encoder *encoder = &dp->encoder;
	struct drm_connector *connector = &dp->connector;

	FUNC0(&dp->event_work);
	FUNC1(encoder);
	encoder->funcs->destroy(encoder);
	connector->funcs->destroy(connector);

	FUNC4(dev);
	if (dp->fw_loaded)
		FUNC5(dp->fw);
	FUNC3(dp->edid);
	dp->edid = NULL;
}