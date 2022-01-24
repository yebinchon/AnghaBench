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
struct msm_edp {int /*<<< orphan*/  ctrl; } ;
struct edp_connector {struct msm_edp* edp; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct edp_connector* FUNC2 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status FUNC3(
		struct drm_connector *connector, bool force)
{
	struct edp_connector *edp_connector = FUNC2(connector);
	struct msm_edp *edp = edp_connector->edp;

	FUNC0("");
	return FUNC1(edp->ctrl) ?
		connector_status_connected : connector_status_disconnected;
}