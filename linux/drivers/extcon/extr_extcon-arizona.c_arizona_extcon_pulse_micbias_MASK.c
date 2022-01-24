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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct arizona_extcon_info {struct arizona* arizona; } ;
struct TYPE_2__ {int /*<<< orphan*/  micd_force_micbias; } ;
struct arizona {int /*<<< orphan*/  dev; TYPE_1__ pdata; struct snd_soc_dapm_context* dapm; } ;

/* Variables and functions */
 char* FUNC0 (struct arizona_extcon_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int FUNC2 (struct snd_soc_component*,char const*) ; 
 int FUNC3 (struct snd_soc_component*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 
 struct snd_soc_component* FUNC5 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC6(struct arizona_extcon_info *info)
{
	struct arizona *arizona = info->arizona;
	const char *widget = FUNC0(info);
	struct snd_soc_dapm_context *dapm = arizona->dapm;
	struct snd_soc_component *component = FUNC5(dapm);
	int ret;

	ret = FUNC3(component, widget);
	if (ret != 0)
		FUNC1(arizona->dev, "Failed to enable %s: %d\n",
			 widget, ret);

	FUNC4(dapm);

	if (!arizona->pdata.micd_force_micbias) {
		ret = FUNC2(component, widget);
		if (ret != 0)
			FUNC1(arizona->dev, "Failed to disable %s: %d\n",
				 widget, ret);

		FUNC4(dapm);
	}
}