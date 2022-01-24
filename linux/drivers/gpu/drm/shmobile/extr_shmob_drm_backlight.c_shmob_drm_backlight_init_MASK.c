#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct shmob_drm_device {TYPE_1__* pdata; } ;
struct drm_connector {struct drm_device* dev; } ;
struct shmob_drm_connector {struct backlight_device* backlight; struct drm_connector connector; } ;
struct shmob_drm_backlight_data {scalar_t__ max_brightness; int /*<<< orphan*/  name; } ;
struct drm_device {int /*<<< orphan*/  dev; struct shmob_drm_device* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  power; scalar_t__ brightness; scalar_t__ max_brightness; } ;
struct backlight_device {TYPE_2__ props; } ;
struct TYPE_3__ {struct shmob_drm_backlight_data backlight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 struct backlight_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct shmob_drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  shmob_drm_backlight_ops ; 

int FUNC5(struct shmob_drm_connector *scon)
{
	struct shmob_drm_device *sdev = scon->connector.dev->dev_private;
	const struct shmob_drm_backlight_data *bdata = &sdev->pdata->backlight;
	struct drm_connector *connector = &scon->connector;
	struct drm_device *dev = connector->dev;
	struct backlight_device *backlight;

	if (!bdata->max_brightness)
		return 0;

	backlight = FUNC2(bdata->name, dev->dev, scon,
					      &shmob_drm_backlight_ops, NULL);
	if (FUNC0(backlight)) {
		FUNC4(dev->dev, "unable to register backlight device: %ld\n",
			FUNC1(backlight));
		return FUNC1(backlight);
	}

	backlight->props.max_brightness = bdata->max_brightness;
	backlight->props.brightness = bdata->max_brightness;
	backlight->props.power = FB_BLANK_POWERDOWN;
	FUNC3(backlight);

	scon->backlight = backlight;
	return 0;
}