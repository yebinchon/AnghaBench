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
struct tfp410_connector {TYPE_1__* mod; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int connector_status_connected ; 
 int connector_status_unknown ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct tfp410_connector* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status FUNC2(
		struct drm_connector *connector,
		bool force)
{
	struct tfp410_connector *tfp410_connector = FUNC1(connector);

	if (FUNC0(tfp410_connector->mod->i2c))
		return connector_status_connected;

	return connector_status_unknown;
}