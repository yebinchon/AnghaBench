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
struct td043mtea1_panel {int /*<<< orphan*/  spi_suspended; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct td043mtea1_panel*) ; 
 struct td043mtea1_panel* FUNC1 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC2(struct drm_panel *panel)
{
	struct td043mtea1_panel *lcd = FUNC1(panel);

	if (!lcd->spi_suspended)
		FUNC0(lcd);

	return 0;
}