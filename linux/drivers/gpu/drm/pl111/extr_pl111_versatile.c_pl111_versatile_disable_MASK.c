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
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_CLCD ; 
 int /*<<< orphan*/  SYS_CLCD_CONNECTOR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  versatile_syscon_map ; 

__attribute__((used)) static void FUNC2(struct drm_device *drm)
{
	FUNC0(drm->dev, "disable Versatile CLCD connectors\n");
	FUNC1(versatile_syscon_map,
			   SYS_CLCD,
			   SYS_CLCD_CONNECTOR_MASK,
			   0);
}