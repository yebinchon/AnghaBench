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
struct psb_intel_lvds_priv {void* saveBLC_PWM_CTL; void* savePP_CYCLE; void* savePP_CONTROL; void* saveLVDS; void* savePP_OFF; void* savePP_ON; void* savePFIT_PGM_RATIOS; void* savePFIT_CONTROL; } ;
struct gma_encoder {scalar_t__ dev_priv; } ;
struct TYPE_2__ {int saveBLC_PWM_CTL; } ;
struct drm_psb_private {int backlight_duty_cycle; TYPE_1__ regs; } ;
struct drm_device {int /*<<< orphan*/  dev; scalar_t__ dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int BACKLIGHT_DUTY_CYCLE_MASK ; 
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int /*<<< orphan*/  LVDS ; 
 int /*<<< orphan*/  LVDSPP_OFF ; 
 int /*<<< orphan*/  LVDSPP_ON ; 
 int /*<<< orphan*/  PFIT_CONTROL ; 
 int /*<<< orphan*/  PFIT_PGM_RATIOS ; 
 int /*<<< orphan*/  PP_CONTROL ; 
 int /*<<< orphan*/  PP_CYCLE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*,void*,void*,void*,void*,void*) ; 
 struct gma_encoder* FUNC2 (struct drm_connector*) ; 
 int FUNC3 (struct drm_device*) ; 

__attribute__((used)) static void FUNC4(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct drm_psb_private *dev_priv =
		(struct drm_psb_private *)dev->dev_private;
	struct gma_encoder *gma_encoder = FUNC2(connector);
	struct psb_intel_lvds_priv *lvds_priv =
		(struct psb_intel_lvds_priv *)gma_encoder->dev_priv;

	lvds_priv->savePP_ON = FUNC0(LVDSPP_ON);
	lvds_priv->savePP_OFF = FUNC0(LVDSPP_OFF);
	lvds_priv->saveLVDS = FUNC0(LVDS);
	lvds_priv->savePP_CONTROL = FUNC0(PP_CONTROL);
	lvds_priv->savePP_CYCLE = FUNC0(PP_CYCLE);
	/*lvds_priv->savePP_DIVISOR = REG_READ(PP_DIVISOR);*/
	lvds_priv->saveBLC_PWM_CTL = FUNC0(BLC_PWM_CTL);
	lvds_priv->savePFIT_CONTROL = FUNC0(PFIT_CONTROL);
	lvds_priv->savePFIT_PGM_RATIOS = FUNC0(PFIT_PGM_RATIOS);

	/*TODO: move backlight_duty_cycle to psb_intel_lvds_priv*/
	dev_priv->backlight_duty_cycle = (dev_priv->regs.saveBLC_PWM_CTL &
						BACKLIGHT_DUTY_CYCLE_MASK);

	/*
	 * If the light is off at server startup,
	 * just make it full brightness
	 */
	if (dev_priv->backlight_duty_cycle == 0)
		dev_priv->backlight_duty_cycle =
		FUNC3(dev);

	FUNC1(dev->dev, "(0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x)\n",
			lvds_priv->savePP_ON,
			lvds_priv->savePP_OFF,
			lvds_priv->saveLVDS,
			lvds_priv->savePP_CONTROL,
			lvds_priv->savePP_CYCLE,
			lvds_priv->saveBLC_PWM_CTL);
}