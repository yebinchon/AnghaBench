#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_4__ kobj; } ;
struct TYPE_7__ {TYPE_2__ dev; } ;
struct intel_sdvo {TYPE_3__ ddc; } ;
struct drm_connector {TYPE_1__* kdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 struct intel_sdvo* FUNC0 (struct drm_connector*) ; 
 int FUNC1 (struct drm_connector*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct drm_connector *connector)
{
	struct intel_sdvo *sdvo = FUNC0(connector);
	int ret;

	ret = FUNC1(connector);
	if (ret)
		return ret;

	return FUNC2(&connector->kdev->kobj,
				 &sdvo->ddc.dev.kobj,
				 sdvo->ddc.dev.kobj.name);
}