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
struct hdmi_platform_config {struct hdmi_gpio_data* gpios; } ;
struct hdmi_gpio_data {int /*<<< orphan*/  gpiod; } ;
struct hdmi_connector {struct hdmi* hdmi; } ;
struct hdmi {struct hdmi_platform_config* config; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t HPD_GPIO_INDEX ; 
 int FUNC1 (struct hdmi*) ; 
 int FUNC2 (struct hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct hdmi_connector* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status FUNC5(
		struct drm_connector *connector, bool force)
{
	struct hdmi_connector *hdmi_connector = FUNC4(connector);
	struct hdmi *hdmi = hdmi_connector->hdmi;
	const struct hdmi_platform_config *config = hdmi->config;
	struct hdmi_gpio_data hpd_gpio = config->gpios[HPD_GPIO_INDEX];
	enum drm_connector_status stat_gpio, stat_reg;
	int retry = 20;

	/*
	 * some platforms may not have hpd gpio. Rely only on the status
	 * provided by REG_HDMI_HPD_INT_STATUS in this case.
	 */
	if (!hpd_gpio.gpiod)
		return FUNC2(hdmi);

	do {
		stat_gpio = FUNC1(hdmi);
		stat_reg  = FUNC2(hdmi);

		if (stat_gpio == stat_reg)
			break;

		FUNC3(10);
	} while (--retry);

	/* the status we get from reading gpio seems to be more reliable,
	 * so trust that one the most if we didn't manage to get hdmi and
	 * gpio status to agree:
	 */
	if (stat_gpio != stat_reg) {
		FUNC0("HDMI_HPD_INT_STATUS tells us: %d", stat_reg);
		FUNC0("hpd gpio tells us: %d", stat_gpio);
	}

	return stat_gpio;
}