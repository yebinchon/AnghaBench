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
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpiod_hpd; } ;
struct anx78xx {TYPE_1__ pdata; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct anx78xx* FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_connector_status FUNC2(struct drm_connector *connector,
						bool force)
{
	struct anx78xx *anx78xx = FUNC0(connector);

	if (!FUNC1(anx78xx->pdata.gpiod_hpd))
		return connector_status_disconnected;

	return connector_status_connected;
}