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
struct msm_drm_private {struct hdmi* hdmi; } ;
struct hdmi_platform_config {char* mmio_name; char* qfprom_mmio_name; TYPE_1__* gpios; } ;
struct hdmi {int /*<<< orphan*/ * audio_pdev; } ;
struct gpio_desc {int /*<<< orphan*/ * audio_pdev; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct device_node {int dummy; } ;
struct device {struct hdmi_platform_config* platform_data; struct device_node* of_node; } ;
struct TYPE_4__ {char* name; int /*<<< orphan*/  value; int /*<<< orphan*/  output; int /*<<< orphan*/  label; } ;
struct TYPE_3__ {int /*<<< orphan*/  value; int /*<<< orphan*/  output; struct hdmi* gpiod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIOD_ASIS ; 
 int HDMI_MAX_NUM_GPIO ; 
 scalar_t__ FUNC3 (struct hdmi*) ; 
 int FUNC4 (struct hdmi*) ; 
 struct drm_device* FUNC5 (struct device*) ; 
 struct hdmi* FUNC6 (struct device*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hdmi*,int /*<<< orphan*/ ) ; 
 TYPE_2__* msm_hdmi_gpio_pdata ; 
 struct hdmi* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hdmi*,struct device*) ; 
 scalar_t__ FUNC10 (struct device*) ; 
 scalar_t__ FUNC11 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 

__attribute__((used)) static int FUNC13(struct device *dev, struct device *master, void *data)
{
	struct drm_device *drm = FUNC5(master);
	struct msm_drm_private *priv = drm->dev_private;
	struct hdmi_platform_config *hdmi_cfg;
	struct hdmi *hdmi;
	struct device_node *of_node = dev->of_node;
	int i, err;

	hdmi_cfg = (struct hdmi_platform_config *)
			FUNC10(dev);
	if (!hdmi_cfg) {
		FUNC1(dev, "unknown hdmi_cfg: %pOFn\n", of_node);
		return -ENXIO;
	}

	hdmi_cfg->mmio_name     = "core_physical";
	hdmi_cfg->qfprom_mmio_name = "qfprom_physical";

	for (i = 0; i < HDMI_MAX_NUM_GPIO; i++) {
		const char *name = msm_hdmi_gpio_pdata[i].name;
		struct gpio_desc *gpiod;

		/*
		 * We are fetching the GPIO lines "as is" since the connector
		 * code is enabling and disabling the lines. Until that point
		 * the power-on default value will be kept.
		 */
		gpiod = FUNC6(dev, name, GPIOD_ASIS);
		/* This will catch e.g. -PROBE_DEFER */
		if (FUNC3(gpiod))
			return FUNC4(gpiod);
		if (!gpiod) {
			/* Try a second time, stripping down the name */
			char name3[32];

			/*
			 * Try again after stripping out the "qcom,hdmi-tx"
			 * prefix. This is mainly to match "hpd-gpios" used
			 * in the upstream bindings.
			 */
			if (FUNC11(name, "qcom,hdmi-tx-%s", name3))
				gpiod = FUNC6(dev, name3, GPIOD_ASIS);
			if (FUNC3(gpiod))
				return FUNC4(gpiod);
			if (!gpiod)
				FUNC0("failed to get gpio: %s", name);
		}
		hdmi_cfg->gpios[i].gpiod = gpiod;
		if (gpiod)
			FUNC7(gpiod, msm_hdmi_gpio_pdata[i].label);
		hdmi_cfg->gpios[i].output = msm_hdmi_gpio_pdata[i].output;
		hdmi_cfg->gpios[i].value = msm_hdmi_gpio_pdata[i].value;
	}

	dev->platform_data = hdmi_cfg;

	hdmi = FUNC8(FUNC12(dev));
	if (FUNC3(hdmi))
		return FUNC4(hdmi);
	priv->hdmi = hdmi;

	err = FUNC9(hdmi, dev);
	if (err) {
		FUNC2("Failed to attach an audio codec %d\n", err);
		hdmi->audio_pdev = NULL;
	}

	return 0;
}