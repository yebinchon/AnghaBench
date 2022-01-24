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
struct msm_dsi {scalar_t__ panel; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int FUNC0 (struct drm_connector*) ; 
 struct msm_dsi* FUNC1 (int) ; 

__attribute__((used)) static enum drm_connector_status FUNC2(
		struct drm_connector *connector, bool force)
{
	int id = FUNC0(connector);
	struct msm_dsi *msm_dsi = FUNC1(id);

	return msm_dsi->panel ? connector_status_connected :
		connector_status_disconnected;
}