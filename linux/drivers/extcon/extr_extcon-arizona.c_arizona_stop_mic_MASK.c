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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct arizona_extcon_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  micvdd; scalar_t__ micd_reva; struct arizona* arizona; } ;
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; struct snd_soc_dapm_context* dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_MICD_ENA ; 
 int /*<<< orphan*/  ARIZONA_MIC_DETECT_1 ; 
 char* FUNC0 (struct arizona_extcon_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct snd_soc_component*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_dapm_context*) ; 
 struct snd_soc_component* FUNC11 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC12(struct arizona_extcon_info *info)
{
	struct arizona *arizona = info->arizona;
	const char *widget = FUNC0(info);
	struct snd_soc_dapm_context *dapm = arizona->dapm;
	struct snd_soc_component *component = FUNC11(dapm);
	bool change = false;
	int ret;

	ret = FUNC5(arizona->regmap, ARIZONA_MIC_DETECT_1,
				       ARIZONA_MICD_ENA, 0,
				       &change);
	if (ret < 0)
		FUNC1(arizona->dev, "Failed to disable micd: %d\n", ret);

	ret = FUNC9(component, widget);
	if (ret != 0)
		FUNC2(arizona->dev,
			 "Failed to disable %s: %d\n",
			 widget, ret);

	FUNC10(dapm);

	if (info->micd_reva) {
		FUNC6(arizona->regmap, 0x80, 0x3);
		FUNC6(arizona->regmap, 0x294, 2);
		FUNC6(arizona->regmap, 0x80, 0x0);
	}

	ret = FUNC7(info->micvdd, true);
	if (ret != 0) {
		FUNC1(arizona->dev, "Failed to bypass MICVDD: %d\n",
			ret);
	}

	if (change) {
		FUNC8(info->micvdd);
		FUNC3(info->dev);
		FUNC4(info->dev);
	}
}