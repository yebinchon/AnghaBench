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
struct msm_dsi_host {void* te_gpio; void* disp_en_gpio; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct msm_dsi_host *msm_host,
			struct device *panel_device)
{
	msm_host->disp_en_gpio = FUNC3(panel_device,
							 "disp-enable",
							 GPIOD_OUT_LOW);
	if (FUNC1(msm_host->disp_en_gpio)) {
		FUNC0("cannot get disp-enable-gpios %ld",
				FUNC2(msm_host->disp_en_gpio));
		return FUNC2(msm_host->disp_en_gpio);
	}

	msm_host->te_gpio = FUNC3(panel_device, "disp-te",
								GPIOD_IN);
	if (FUNC1(msm_host->te_gpio)) {
		FUNC0("cannot get disp-te-gpios %ld", FUNC2(msm_host->te_gpio));
		return FUNC2(msm_host->te_gpio);
	}

	return 0;
}