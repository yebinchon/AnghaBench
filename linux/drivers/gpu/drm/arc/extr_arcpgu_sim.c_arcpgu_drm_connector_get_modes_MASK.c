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
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XRES_DEF ; 
 int /*<<< orphan*/  XRES_MAX ; 
 int /*<<< orphan*/  YRES_DEF ; 
 int /*<<< orphan*/  YRES_MAX ; 
 int FUNC0 (struct drm_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct drm_connector *connector)
{
	int count;

	count = FUNC0(connector, XRES_MAX, YRES_MAX);
	FUNC1(connector, XRES_DEF, YRES_DEF);
	return count;
}