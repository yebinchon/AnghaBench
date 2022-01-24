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
struct ls037v7dw01_panel {int /*<<< orphan*/  resb_gpio; int /*<<< orphan*/  ini_gpio; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ls037v7dw01_panel* FUNC2 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct ls037v7dw01_panel *lcd = FUNC2(panel);

	FUNC0(lcd->ini_gpio, 0);
	FUNC0(lcd->resb_gpio, 0);

	/* Wait at least 5 vsyncs after disabling the LCD. */
	FUNC1(100);

	return 0;
}