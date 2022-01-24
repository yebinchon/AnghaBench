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
struct acx565akm_panel {int dummy; } ;

/* Variables and functions */
 int MIPI_DCS_SET_DISPLAY_OFF ; 
 int MIPI_DCS_SET_DISPLAY_ON ; 
 int /*<<< orphan*/  FUNC0 (struct acx565akm_panel*,int) ; 

__attribute__((used)) static void FUNC1(struct acx565akm_panel *lcd,
					int enabled)
{
	int cmd = enabled ? MIPI_DCS_SET_DISPLAY_ON : MIPI_DCS_SET_DISPLAY_OFF;

	FUNC0(lcd, cmd);
}