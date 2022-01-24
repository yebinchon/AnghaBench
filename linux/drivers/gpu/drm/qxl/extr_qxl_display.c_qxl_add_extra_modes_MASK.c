#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_connector {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* extra_modes ; 
 scalar_t__ FUNC1 (struct drm_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct drm_connector *connector)
{
	int i, ret = 0;

	for (i = 0; i < FUNC0(extra_modes); i++)
		ret += FUNC1(connector,
				    extra_modes[i].w,
				    extra_modes[i].h,
				    false);
	return ret;
}