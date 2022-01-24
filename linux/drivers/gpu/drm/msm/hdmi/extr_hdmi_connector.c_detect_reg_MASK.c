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
typedef  int uint32_t ;
struct hdmi {TYPE_1__* pdev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HDMI_HPD_INT_STATUS_CABLE_DETECTED ; 
 int /*<<< orphan*/  REG_HDMI_HPD_INT_STATUS ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi*,int) ; 
 int FUNC1 (struct hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum drm_connector_status FUNC4(struct hdmi *hdmi)
{
	uint32_t hpd_int_status;

	FUNC2(&hdmi->pdev->dev);
	FUNC0(hdmi, true);

	hpd_int_status = FUNC1(hdmi, REG_HDMI_HPD_INT_STATUS);

	FUNC0(hdmi, false);
	FUNC3(&hdmi->pdev->dev);

	return (hpd_int_status & HDMI_HPD_INT_STATUS_CABLE_DETECTED) ?
			connector_status_connected : connector_status_disconnected;
}