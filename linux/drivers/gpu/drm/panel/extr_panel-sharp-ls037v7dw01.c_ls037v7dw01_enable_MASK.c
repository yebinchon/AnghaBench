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
struct ls037v7dw01_panel {int /*<<< orphan*/  ini_gpio; int /*<<< orphan*/  resb_gpio; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ls037v7dw01_panel* FUNC2 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct ls037v7dw01_panel *lcd = FUNC2(panel);

	/* Wait couple of vsyncs before enabling the LCD. */
	FUNC1(50);

	FUNC0(lcd->resb_gpio, 1);
	FUNC0(lcd->ini_gpio, 1);

	return 0;
}