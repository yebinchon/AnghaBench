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
struct mtk_hdmi {int /*<<< orphan*/  cec_dev; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct mtk_hdmi* FUNC0 (struct drm_connector*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_connector_status FUNC2(struct drm_connector *conn,
						  bool force)
{
	struct mtk_hdmi *hdmi = FUNC0(conn);

	return FUNC1(hdmi->cec_dev) ?
	       connector_status_connected : connector_status_disconnected;
}