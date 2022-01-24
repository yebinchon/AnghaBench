#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int hdcp2_encrypted; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ base; int /*<<< orphan*/  name; } ;
struct intel_connector {TYPE_3__ hdcp; TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct intel_connector*) ; 
 int FUNC2 (struct intel_connector*) ; 

__attribute__((used)) static int FUNC3(struct intel_connector *connector)
{
	int ret;

	FUNC0("[%s:%d] HDCP2.2 is being Disabled\n",
		      connector->base.name, connector->base.base.id);

	ret = FUNC2(connector);

	if (FUNC1(connector) < 0)
		FUNC0("Port deauth failed.\n");

	connector->hdcp.hdcp2_encrypted = false;

	return ret;
}