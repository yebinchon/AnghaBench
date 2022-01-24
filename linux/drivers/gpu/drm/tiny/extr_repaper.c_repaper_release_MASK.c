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
struct repaper_epd {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 struct repaper_epd* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct repaper_epd*) ; 

__attribute__((used)) static void FUNC5(struct drm_device *drm)
{
	struct repaper_epd *epd = FUNC3(drm);

	FUNC0("\n");

	FUNC2(drm);
	FUNC1(drm);
	FUNC4(epd);
}