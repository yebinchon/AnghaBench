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
struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct repaper_epd {int enabled; int partial; int /*<<< orphan*/  channel_select; int /*<<< orphan*/  busy; scalar_t__ reset; scalar_t__ border; scalar_t__ panel_on; scalar_t__ discharge; struct spi_device* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_crtc_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int REPAPER_RID_G2_COG_ID ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct repaper_epd* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct repaper_epd*) ; 
 int FUNC10 (struct spi_device*) ; 
 int FUNC11 (struct spi_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

__attribute__((used)) static void FUNC16(struct drm_simple_display_pipe *pipe,
				struct drm_crtc_state *crtc_state,
				struct drm_plane_state *plane_state)
{
	struct repaper_epd *epd = FUNC5(pipe->crtc.dev);
	struct spi_device *spi = epd->spi;
	struct device *dev = &spi->dev;
	bool dc_ok = false;
	int i, ret, idx;

	if (!FUNC3(pipe->crtc.dev, &idx))
		return;

	FUNC0("\n");

	/* Power up sequence */
	FUNC7(epd->reset, 0);
	FUNC7(epd->panel_on, 0);
	FUNC7(epd->discharge, 0);
	if (epd->border)
		FUNC7(epd->border, 0);
	FUNC12(spi);
	FUNC15(5000, 10000);

	FUNC7(epd->panel_on, 1);
	/*
	 * This delay comes from the repaper.org userspace driver, it's not
	 * mentioned in the datasheet.
	 */
	FUNC15(10000, 15000);
	FUNC7(epd->reset, 1);
	if (epd->border)
		FUNC7(epd->border, 1);
	FUNC15(5000, 10000);
	FUNC7(epd->reset, 0);
	FUNC15(5000, 10000);
	FUNC7(epd->reset, 1);
	FUNC15(5000, 10000);

	/* Wait for COG to become ready */
	for (i = 100; i > 0; i--) {
		if (!FUNC6(epd->busy))
			break;

		FUNC15(10, 100);
	}

	if (!i) {
		FUNC1(dev, "timeout waiting for panel to become ready.\n");
		FUNC9(epd);
		goto out_exit;
	}

	FUNC10(spi);
	ret = FUNC10(spi);
	if (ret != REPAPER_RID_G2_COG_ID) {
		if (ret < 0)
			FUNC2(dev, "failed to read chip (%d)\n", ret);
		else
			FUNC2(dev, "wrong COG ID 0x%02x\n", ret);
		FUNC9(epd);
		goto out_exit;
	}

	/* Disable OE */
	FUNC14(spi, 0x02, 0x40);

	ret = FUNC11(spi, 0x0f);
	if (ret < 0 || !(ret & 0x80)) {
		if (ret < 0)
			FUNC1(dev, "failed to read chip (%d)\n", ret);
		else
			FUNC1(dev, "panel is reported broken\n");
		FUNC9(epd);
		goto out_exit;
	}

	/* Power saving mode */
	FUNC14(spi, 0x0b, 0x02);
	/* Channel select */
	FUNC13(spi, 0x01, epd->channel_select, 8);
	/* High power mode osc */
	FUNC14(spi, 0x07, 0xd1);
	/* Power setting */
	FUNC14(spi, 0x08, 0x02);
	/* Vcom level */
	FUNC14(spi, 0x09, 0xc2);
	/* Power setting */
	FUNC14(spi, 0x04, 0x03);
	/* Driver latch on */
	FUNC14(spi, 0x03, 0x01);
	/* Driver latch off */
	FUNC14(spi, 0x03, 0x00);
	FUNC15(5000, 10000);

	/* Start chargepump */
	for (i = 0; i < 4; ++i) {
		/* Charge pump positive voltage on - VGH/VDL on */
		FUNC14(spi, 0x05, 0x01);
		FUNC8(240);

		/* Charge pump negative voltage on - VGL/VDL on */
		FUNC14(spi, 0x05, 0x03);
		FUNC8(40);

		/* Charge pump Vcom on - Vcom driver on */
		FUNC14(spi, 0x05, 0x0f);
		FUNC8(40);

		/* check DC/DC */
		ret = FUNC11(spi, 0x0f);
		if (ret < 0) {
			FUNC1(dev, "failed to read chip (%d)\n", ret);
			FUNC9(epd);
			goto out_exit;
		}

		if (ret & 0x40) {
			dc_ok = true;
			break;
		}
	}

	if (!dc_ok) {
		FUNC1(dev, "dc/dc failed\n");
		FUNC9(epd);
		goto out_exit;
	}

	/*
	 * Output enable to disable
	 * The userspace driver sets this to 0x04, but the datasheet says 0x06
	 */
	FUNC14(spi, 0x02, 0x04);

	epd->enabled = true;
	epd->partial = false;
out_exit:
	FUNC4(idx);
}