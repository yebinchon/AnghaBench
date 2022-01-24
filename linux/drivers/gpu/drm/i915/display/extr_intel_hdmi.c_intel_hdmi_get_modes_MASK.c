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
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct edid* detect_edid; } ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,struct edid*) ; 
 TYPE_1__* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC2(struct drm_connector *connector)
{
	struct edid *edid;

	edid = FUNC1(connector)->detect_edid;
	if (edid == NULL)
		return 0;

	return FUNC0(connector, edid);
}