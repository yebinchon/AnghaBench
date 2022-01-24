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
struct spi_device_id {int driver_data; } ;
struct device {int /*<<< orphan*/  coherent_dma_mask; } ;
struct spi_device {int max_speed_hz; struct device dev; } ;
struct TYPE_2__ {int min_width; int max_width; int min_height; int max_height; int /*<<< orphan*/ * funcs; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct repaper_epd {int stage_time; int bytes_per_scan; int middle_scan; int pre_border_byte; int width; int height; int factored_stage_time; int /*<<< orphan*/  connector; int /*<<< orphan*/  pipe; void* current_frame; void* line_buffer; struct drm_display_mode const* mode; void* border_byte; int /*<<< orphan*/  channel_select; void* border; void* thermal; void* busy; void* reset; void* discharge; void* panel_on; struct spi_device* spi; struct drm_device drm; } ;
struct of_device_id {scalar_t__ data; } ;
struct drm_display_mode {int hdisplay; int vdisplay; } ;
typedef  enum repaper_model { ____Placeholder_repaper_model } repaper_model ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_SPI ; 
#define  E1144CS021 131 
#define  E1190CS021 130 
#define  E2200CS021 129 
#define  E2271CS021 128 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 void* REPAPER_BORDER_BYTE_NONE ; 
 void* REPAPER_BORDER_BYTE_SET ; 
 void* REPAPER_BORDER_BYTE_ZERO ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,char const**) ; 
 int FUNC8 (struct device*,struct drm_device*,int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_device*) ; 
 int FUNC18 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct repaper_epd*) ; 
 struct repaper_epd* FUNC20 (int,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC21 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  repaper_connector_funcs ; 
 int /*<<< orphan*/  repaper_connector_hfuncs ; 
 int /*<<< orphan*/  repaper_driver ; 
 int /*<<< orphan*/  repaper_e1144cs021_cs ; 
 struct drm_display_mode repaper_e1144cs021_mode ; 
 int /*<<< orphan*/  repaper_e1190cs021_cs ; 
 struct drm_display_mode repaper_e1190cs021_mode ; 
 int /*<<< orphan*/  repaper_e2200cs021_cs ; 
 struct drm_display_mode repaper_e2200cs021_mode ; 
 int /*<<< orphan*/  repaper_e2271cs021_cs ; 
 struct drm_display_mode repaper_e2271cs021_mode ; 
 int /*<<< orphan*/  repaper_formats ; 
 int /*<<< orphan*/  repaper_mode_config_funcs ; 
 int /*<<< orphan*/  repaper_of_match ; 
 int /*<<< orphan*/  repaper_pipe_funcs ; 
 struct spi_device_id* FUNC22 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct spi_device*,struct drm_device*) ; 
 void* FUNC24 (char const*) ; 

__attribute__((used)) static int FUNC25(struct spi_device *spi)
{
	const struct drm_display_mode *mode;
	const struct spi_device_id *spi_id;
	const struct of_device_id *match;
	struct device *dev = &spi->dev;
	enum repaper_model model;
	const char *thermal_zone;
	struct repaper_epd *epd;
	size_t line_buffer_size;
	struct drm_device *drm;
	int ret;

	match = FUNC21(repaper_of_match, dev);
	if (match) {
		model = (enum repaper_model)match->data;
	} else {
		spi_id = FUNC22(spi);
		model = spi_id->driver_data;
	}

	/* The SPI device is used to allocate dma memory */
	if (!dev->coherent_dma_mask) {
		ret = FUNC11(dev, FUNC1(32));
		if (ret) {
			FUNC6(dev, "Failed to set dma mask %d\n", ret);
			return ret;
		}
	}

	epd = FUNC20(sizeof(*epd), GFP_KERNEL);
	if (!epd)
		return -ENOMEM;

	drm = &epd->drm;

	ret = FUNC8(dev, drm, &repaper_driver);
	if (ret) {
		FUNC19(epd);
		return ret;
	}

	FUNC16(drm);
	drm->mode_config.funcs = &repaper_mode_config_funcs;

	epd->spi = spi;

	epd->panel_on = FUNC9(dev, "panel-on", GPIOD_OUT_LOW);
	if (FUNC4(epd->panel_on)) {
		ret = FUNC5(epd->panel_on);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "Failed to get gpio 'panel-on'\n");
		return ret;
	}

	epd->discharge = FUNC9(dev, "discharge", GPIOD_OUT_LOW);
	if (FUNC4(epd->discharge)) {
		ret = FUNC5(epd->discharge);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "Failed to get gpio 'discharge'\n");
		return ret;
	}

	epd->reset = FUNC9(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC4(epd->reset)) {
		ret = FUNC5(epd->reset);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "Failed to get gpio 'reset'\n");
		return ret;
	}

	epd->busy = FUNC9(dev, "busy", GPIOD_IN);
	if (FUNC4(epd->busy)) {
		ret = FUNC5(epd->busy);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "Failed to get gpio 'busy'\n");
		return ret;
	}

	if (!FUNC7(dev, "pervasive,thermal-zone",
					 &thermal_zone)) {
		epd->thermal = FUNC24(thermal_zone);
		if (FUNC4(epd->thermal)) {
			FUNC3(dev, "Failed to get thermal zone: %s\n", thermal_zone);
			return FUNC5(epd->thermal);
		}
	}

	switch (model) {
	case E1144CS021:
		mode = &repaper_e1144cs021_mode;
		epd->channel_select = repaper_e1144cs021_cs;
		epd->stage_time = 480;
		epd->bytes_per_scan = 96 / 4;
		epd->middle_scan = true; /* data-scan-data */
		epd->pre_border_byte = false;
		epd->border_byte = REPAPER_BORDER_BYTE_ZERO;
		break;

	case E1190CS021:
		mode = &repaper_e1190cs021_mode;
		epd->channel_select = repaper_e1190cs021_cs;
		epd->stage_time = 480;
		epd->bytes_per_scan = 128 / 4 / 2;
		epd->middle_scan = false; /* scan-data-scan */
		epd->pre_border_byte = false;
		epd->border_byte = REPAPER_BORDER_BYTE_SET;
		break;

	case E2200CS021:
		mode = &repaper_e2200cs021_mode;
		epd->channel_select = repaper_e2200cs021_cs;
		epd->stage_time = 480;
		epd->bytes_per_scan = 96 / 4;
		epd->middle_scan = true; /* data-scan-data */
		epd->pre_border_byte = true;
		epd->border_byte = REPAPER_BORDER_BYTE_NONE;
		break;

	case E2271CS021:
		epd->border = FUNC9(dev, "border", GPIOD_OUT_LOW);
		if (FUNC4(epd->border)) {
			ret = FUNC5(epd->border);
			if (ret != -EPROBE_DEFER)
				FUNC3(dev, "Failed to get gpio 'border'\n");
			return ret;
		}

		mode = &repaper_e2271cs021_mode;
		epd->channel_select = repaper_e2271cs021_cs;
		epd->stage_time = 630;
		epd->bytes_per_scan = 176 / 4;
		epd->middle_scan = true; /* data-scan-data */
		epd->pre_border_byte = true;
		epd->border_byte = REPAPER_BORDER_BYTE_NONE;
		break;

	default:
		return -ENODEV;
	}

	epd->mode = mode;
	epd->width = mode->hdisplay;
	epd->height = mode->vdisplay;
	epd->factored_stage_time = epd->stage_time;

	line_buffer_size = 2 * epd->width / 8 + epd->bytes_per_scan + 2;
	epd->line_buffer = FUNC10(dev, line_buffer_size, GFP_KERNEL);
	if (!epd->line_buffer)
		return -ENOMEM;

	epd->current_frame = FUNC10(dev, epd->width * epd->height / 8,
					  GFP_KERNEL);
	if (!epd->current_frame)
		return -ENOMEM;

	drm->mode_config.min_width = mode->hdisplay;
	drm->mode_config.max_width = mode->hdisplay;
	drm->mode_config.min_height = mode->vdisplay;
	drm->mode_config.max_height = mode->vdisplay;

	FUNC12(&epd->connector, &repaper_connector_hfuncs);
	ret = FUNC13(drm, &epd->connector, &repaper_connector_funcs,
				 DRM_MODE_CONNECTOR_SPI);
	if (ret)
		return ret;

	ret = FUNC18(drm, &epd->pipe, &repaper_pipe_funcs,
					   repaper_formats, FUNC0(repaper_formats),
					   NULL, &epd->connector);
	if (ret)
		return ret;

	FUNC17(drm);

	ret = FUNC14(drm, 0);
	if (ret)
		return ret;

	FUNC23(spi, drm);

	FUNC2("SPI speed: %uMHz\n", spi->max_speed_hz / 1000000);

	FUNC15(drm, 0);

	return 0;
}