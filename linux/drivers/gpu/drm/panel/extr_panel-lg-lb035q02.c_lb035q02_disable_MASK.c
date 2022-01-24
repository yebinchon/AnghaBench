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
struct lb035q02_device {int /*<<< orphan*/  enable_gpio; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lb035q02_device* FUNC1 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC2(struct drm_panel *panel)
{
	struct lb035q02_device *lcd = FUNC1(panel);

	FUNC0(lcd->enable_gpio, 0);

	return 0;
}