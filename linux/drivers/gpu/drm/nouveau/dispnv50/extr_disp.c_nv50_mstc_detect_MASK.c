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
struct nv50_mstc {TYPE_2__* port; } ;
struct drm_connector {TYPE_1__* dev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_4__ {int /*<<< orphan*/  mgr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EACCES ; 
 int connector_status_disconnected ; 
 scalar_t__ FUNC0 (struct drm_connector*) ; 
 int FUNC1 (struct drm_connector*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct nv50_mstc* FUNC2 (struct drm_connector*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_connector_status
FUNC6(struct drm_connector *connector, bool force)
{
	struct nv50_mstc *mstc = FUNC2(connector);
	enum drm_connector_status conn_status;
	int ret;

	if (FUNC0(connector))
		return connector_status_disconnected;

	ret = FUNC3(connector->dev->dev);
	if (ret < 0 && ret != -EACCES)
		return connector_status_disconnected;

	conn_status = FUNC1(connector, mstc->port->mgr,
					     mstc->port);

	FUNC4(connector->dev->dev);
	FUNC5(connector->dev->dev);
	return conn_status;
}