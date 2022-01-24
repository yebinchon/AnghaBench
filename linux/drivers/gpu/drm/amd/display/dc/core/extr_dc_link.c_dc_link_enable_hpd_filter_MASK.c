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
struct gpio_hpd_config {scalar_t__ delay_on_disconnect; scalar_t__ delay_on_connect; } ;
struct gpio {int dummy; } ;
struct dc_link {int is_hpd_filter_disabled; TYPE_1__* ctx; int /*<<< orphan*/  link_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio_service; int /*<<< orphan*/  dc_bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GPIO_MODE_INTERRUPT ; 
 scalar_t__ GPIO_RESULT_OK ; 
 int /*<<< orphan*/  FUNC1 (struct gpio*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio**) ; 
 scalar_t__ FUNC3 (struct gpio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio*,struct gpio_hpd_config*) ; 
 struct gpio* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dc_link*) ; 

void FUNC7(struct dc_link *link, bool enable)
{
	struct gpio *hpd;

	if (enable) {
		link->is_hpd_filter_disabled = false;
		FUNC6(link);
	} else {
		link->is_hpd_filter_disabled = true;
		/* Obtain HPD handle */
		hpd = FUNC5(link->ctx->dc_bios, link->link_id, link->ctx->gpio_service);

		if (!hpd)
			return;

		/* Setup HPD filtering */
		if (FUNC3(hpd, GPIO_MODE_INTERRUPT) == GPIO_RESULT_OK) {
			struct gpio_hpd_config config;

			config.delay_on_connect = 0;
			config.delay_on_disconnect = 0;

			FUNC4(hpd, &config);

			FUNC1(hpd);
		} else {
			FUNC0(false);
		}
		/* Release HPD handle */
		FUNC2(&hpd);
	}
}