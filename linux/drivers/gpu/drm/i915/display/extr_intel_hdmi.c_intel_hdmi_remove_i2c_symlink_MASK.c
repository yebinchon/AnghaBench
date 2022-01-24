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
struct kobject {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct kobject kobj; } ;
struct i2c_adapter {TYPE_1__ dev; } ;
struct drm_connector {TYPE_2__* kdev; } ;
struct TYPE_4__ {struct kobject kobj; } ;

/* Variables and functions */
 struct i2c_adapter* FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct drm_connector *connector)
{
	struct i2c_adapter *adapter = FUNC0(connector);
	struct kobject *i2c_kobj = &adapter->dev.kobj;
	struct kobject *connector_kobj = &connector->kdev->kobj;

	FUNC1(connector_kobj, i2c_kobj->name);
}