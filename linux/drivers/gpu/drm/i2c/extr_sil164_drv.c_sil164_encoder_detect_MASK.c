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
struct i2c_client {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  SIL164_DETECT ; 
 int SIL164_DETECT_HOTPLUG_STAT ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct i2c_client* FUNC0 (struct drm_encoder*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_connector_status
FUNC2(struct drm_encoder *encoder,
		      struct drm_connector *connector)
{
	struct i2c_client *client = FUNC0(encoder);

	if (FUNC1(client, SIL164_DETECT) & SIL164_DETECT_HOTPLUG_STAT)
		return connector_status_connected;
	else
		return connector_status_disconnected;
}