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
typedef  int u8 ;
struct acx565akm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_GET_DISPLAY_BRIGHTNESS ; 
 int /*<<< orphan*/  FUNC0 (struct acx565akm_panel*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC1(struct acx565akm_panel *lcd)
{
	u8 bv;

	FUNC0(lcd, MIPI_DCS_GET_DISPLAY_BRIGHTNESS, &bv, 1);

	return bv;
}