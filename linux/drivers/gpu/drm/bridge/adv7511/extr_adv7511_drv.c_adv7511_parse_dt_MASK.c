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
struct device_node {int dummy; } ;
struct adv7511_link_config {int input_color_depth; scalar_t__ input_colorspace; scalar_t__ input_clock; int input_style; int clock_delay; void* hsync_polarity; void* vsync_polarity; int /*<<< orphan*/  sync_pulse; int /*<<< orphan*/  embedded_sync; void* input_justification; } ;

/* Variables and functions */
 scalar_t__ ADV7511_INPUT_CLOCK_1X ; 
 scalar_t__ ADV7511_INPUT_CLOCK_2X ; 
 scalar_t__ ADV7511_INPUT_CLOCK_DDR ; 
 void* ADV7511_INPUT_JUSTIFICATION_EVENLY ; 
 void* ADV7511_INPUT_JUSTIFICATION_LEFT ; 
 void* ADV7511_INPUT_JUSTIFICATION_RIGHT ; 
 int /*<<< orphan*/  ADV7511_INPUT_SYNC_PULSE_NONE ; 
 void* ADV7511_SYNC_POLARITY_PASSTHROUGH ; 
 int EINVAL ; 
 scalar_t__ HDMI_COLORSPACE_RGB ; 
 scalar_t__ HDMI_COLORSPACE_YUV422 ; 
 scalar_t__ HDMI_COLORSPACE_YUV444 ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*,char*) ; 
 int FUNC1 (struct device_node*,char*,char const**) ; 
 int FUNC2 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(struct device_node *np,
			    struct adv7511_link_config *config)
{
	const char *str;
	int ret;

	FUNC2(np, "adi,input-depth", &config->input_color_depth);
	if (config->input_color_depth != 8 && config->input_color_depth != 10 &&
	    config->input_color_depth != 12)
		return -EINVAL;

	ret = FUNC1(np, "adi,input-colorspace", &str);
	if (ret < 0)
		return ret;

	if (!FUNC3(str, "rgb"))
		config->input_colorspace = HDMI_COLORSPACE_RGB;
	else if (!FUNC3(str, "yuv422"))
		config->input_colorspace = HDMI_COLORSPACE_YUV422;
	else if (!FUNC3(str, "yuv444"))
		config->input_colorspace = HDMI_COLORSPACE_YUV444;
	else
		return -EINVAL;

	ret = FUNC1(np, "adi,input-clock", &str);
	if (ret < 0)
		return ret;

	if (!FUNC3(str, "1x"))
		config->input_clock = ADV7511_INPUT_CLOCK_1X;
	else if (!FUNC3(str, "2x"))
		config->input_clock = ADV7511_INPUT_CLOCK_2X;
	else if (!FUNC3(str, "ddr"))
		config->input_clock = ADV7511_INPUT_CLOCK_DDR;
	else
		return -EINVAL;

	if (config->input_colorspace == HDMI_COLORSPACE_YUV422 ||
	    config->input_clock != ADV7511_INPUT_CLOCK_1X) {
		ret = FUNC2(np, "adi,input-style",
					   &config->input_style);
		if (ret)
			return ret;

		if (config->input_style < 1 || config->input_style > 3)
			return -EINVAL;

		ret = FUNC1(np, "adi,input-justification",
					      &str);
		if (ret < 0)
			return ret;

		if (!FUNC3(str, "left"))
			config->input_justification =
				ADV7511_INPUT_JUSTIFICATION_LEFT;
		else if (!FUNC3(str, "evenly"))
			config->input_justification =
				ADV7511_INPUT_JUSTIFICATION_EVENLY;
		else if (!FUNC3(str, "right"))
			config->input_justification =
				ADV7511_INPUT_JUSTIFICATION_RIGHT;
		else
			return -EINVAL;

	} else {
		config->input_style = 1;
		config->input_justification = ADV7511_INPUT_JUSTIFICATION_LEFT;
	}

	FUNC2(np, "adi,clock-delay", &config->clock_delay);
	if (config->clock_delay < -1200 || config->clock_delay > 1600)
		return -EINVAL;

	config->embedded_sync = FUNC0(np, "adi,embedded-sync");

	/* Hardcode the sync pulse configurations for now. */
	config->sync_pulse = ADV7511_INPUT_SYNC_PULSE_NONE;
	config->vsync_polarity = ADV7511_SYNC_POLARITY_PASSTHROUGH;
	config->hsync_polarity = ADV7511_SYNC_POLARITY_PASSTHROUGH;

	return 0;
}