#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct gpio {int dummy; } ;
struct dc_link {scalar_t__ connector_signal; TYPE_3__* ctx; int /*<<< orphan*/  link_id; TYPE_2__* dc; } ;
typedef  enum dc_connection_type { ____Placeholder_dc_connection_type } dc_connection_type ;
struct TYPE_6__ {int /*<<< orphan*/  gpio_service; int /*<<< orphan*/  dc_bios; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* edp_wait_for_hpd_ready ) (struct dc_link*,int) ;int /*<<< orphan*/  (* edp_power_control ) (struct dc_link*,int) ;} ;
struct TYPE_5__ {TYPE_1__ hwss; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MODE_INTERRUPT ; 
 scalar_t__ SIGNAL_TYPE_EDP ; 
 scalar_t__ SIGNAL_TYPE_LVDS ; 
 int /*<<< orphan*/  FUNC0 (struct gpio*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio**) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio*,int /*<<< orphan*/ ) ; 
 int dc_connection_none ; 
 int dc_connection_single ; 
 struct gpio* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dc_link*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dc_link*,int) ; 

bool FUNC7(struct dc_link *link, enum dc_connection_type *type)
{
	uint32_t is_hpd_high = 0;
	struct gpio *hpd_pin;

	if (link->connector_signal == SIGNAL_TYPE_LVDS) {
		*type = dc_connection_single;
		return true;
	}

	if (link->connector_signal == SIGNAL_TYPE_EDP) {
		/*in case it is not on*/
		link->dc->hwss.edp_power_control(link, true);
		link->dc->hwss.edp_wait_for_hpd_ready(link, true);
	}

	/* todo: may need to lock gpio access */
	hpd_pin = FUNC4(link->ctx->dc_bios, link->link_id, link->ctx->gpio_service);
	if (hpd_pin == NULL)
		goto hpd_gpio_failure;

	FUNC3(hpd_pin, GPIO_MODE_INTERRUPT);
	FUNC2(hpd_pin, &is_hpd_high);
	FUNC0(hpd_pin);
	FUNC1(&hpd_pin);

	if (is_hpd_high) {
		*type = dc_connection_single;
		/* TODO: need to do the actual detection */
	} else {
		*type = dc_connection_none;
	}

	return true;

hpd_gpio_failure:
	return false;
}