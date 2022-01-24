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
struct intel_tv {int type; } ;
struct intel_load_detect_pipe {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_connector {int status; int /*<<< orphan*/  name; TYPE_1__ base; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 struct intel_tv* FUNC1 (struct drm_connector*) ; 
 int FUNC2 (struct drm_connector*,int /*<<< orphan*/ *,struct intel_load_detect_pipe*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct intel_load_detect_pipe*,struct drm_modeset_acquire_ctx*) ; 
 int FUNC4 (struct intel_tv*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*) ; 

__attribute__((used)) static int
FUNC6(struct drm_connector *connector,
		struct drm_modeset_acquire_ctx *ctx,
		bool force)
{
	struct intel_tv *intel_tv = FUNC1(connector);
	enum drm_connector_status status;
	int type;

	FUNC0("[CONNECTOR:%d:%s] force=%d\n",
		      connector->base.id, connector->name,
		      force);

	if (force) {
		struct intel_load_detect_pipe tmp;
		int ret;

		ret = FUNC2(connector, NULL, &tmp, ctx);
		if (ret < 0)
			return ret;

		if (ret > 0) {
			type = FUNC4(intel_tv, connector);
			FUNC3(connector, &tmp, ctx);
			status = type < 0 ?
				connector_status_disconnected :
				connector_status_connected;
		} else
			status = connector_status_unknown;

		if (status == connector_status_connected) {
			intel_tv->type = type;
			FUNC5(connector);
		}

		return status;
	} else
		return connector->status;
}