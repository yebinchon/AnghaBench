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
struct repaper_epd {scalar_t__ discharge; int /*<<< orphan*/  spi; scalar_t__ border; scalar_t__ panel_on; scalar_t__ reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct repaper_epd *epd)
{
	/* Turn off power and all signals */
	FUNC0(epd->reset, 0);
	FUNC0(epd->panel_on, 0);
	if (epd->border)
		FUNC0(epd->border, 0);

	/* Ensure SPI MOSI and CLOCK are Low before CS Low */
	FUNC2(epd->spi);

	/* Discharge pulse */
	FUNC0(epd->discharge, 1);
	FUNC1(150);
	FUNC0(epd->discharge, 0);
}