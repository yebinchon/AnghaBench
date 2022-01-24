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
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 

int FUNC2(struct drm_connector *connector,
				struct edid *edid)
{
	int ret;

	FUNC1(connector, edid);
	ret = FUNC0(connector, edid);

	return ret;
}