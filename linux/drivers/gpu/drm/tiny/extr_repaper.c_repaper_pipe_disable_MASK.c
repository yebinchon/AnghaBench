#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int dummy; } ;
struct repaper_epd {int enabled; unsigned int height; scalar_t__ border; struct spi_device* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  REPAPER_COMPENSATE ; 
 int /*<<< orphan*/  REPAPER_NORMAL ; 
 struct repaper_epd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct repaper_epd*) ; 
 int /*<<< orphan*/  FUNC5 (struct repaper_epd*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*,int,int) ; 

__attribute__((used)) static void FUNC7(struct drm_simple_display_pipe *pipe)
{
	struct repaper_epd *epd = FUNC1(pipe->crtc.dev);
	struct spi_device *spi = epd->spi;
	unsigned int line;

	/*
	 * This callback is not protected by drm_dev_enter/exit since we want to
	 * turn off the display on regular driver unload. It's highly unlikely
	 * that the underlying SPI controller is gone should this be called after
	 * unplug.
	 */

	if (!epd->enabled)
		return;

	FUNC0("\n");

	epd->enabled = false;

	/* Nothing frame */
	for (line = 0; line < epd->height; line++)
		FUNC5(epd, 0x7fffu, NULL, 0x00, NULL,
				 REPAPER_COMPENSATE);

	/* 2.7" */
	if (epd->border) {
		/* Dummy line */
		FUNC5(epd, 0x7fffu, NULL, 0x00, NULL,
				 REPAPER_COMPENSATE);
		FUNC3(25);
		FUNC2(epd->border, 0);
		FUNC3(200);
		FUNC2(epd->border, 1);
	} else {
		/* Border dummy line */
		FUNC5(epd, 0x7fffu, NULL, 0x00, NULL,
				 REPAPER_NORMAL);
		FUNC3(200);
	}

	/* not described in datasheet */
	FUNC6(spi, 0x0b, 0x00);
	/* Latch reset turn on */
	FUNC6(spi, 0x03, 0x01);
	/* Power off charge pump Vcom */
	FUNC6(spi, 0x05, 0x03);
	/* Power off charge pump neg voltage */
	FUNC6(spi, 0x05, 0x01);
	FUNC3(120);
	/* Discharge internal */
	FUNC6(spi, 0x04, 0x80);
	/* turn off all charge pumps */
	FUNC6(spi, 0x05, 0x00);
	/* Turn off osc */
	FUNC6(spi, 0x07, 0x01);
	FUNC3(50);

	FUNC4(epd);
}