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
typedef  scalar_t__ uint32_t ;
struct hw_hpd {int dummy; } ;
struct dc_context {int dummy; } ;
typedef  enum gpio_id { ____Placeholder_gpio_id } gpio_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GPIO_DDC_LINE_MAX ; 
 scalar_t__ GPIO_DDC_LINE_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct hw_hpd*,int,scalar_t__,struct dc_context*) ; 
 struct hw_hpd* FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(
	struct hw_hpd **hw_hpd,
	struct dc_context *ctx,
	enum gpio_id id,
	uint32_t en)
{
	if ((en < GPIO_DDC_LINE_MIN) || (en > GPIO_DDC_LINE_MAX)) {
		FUNC0(false);
		*hw_hpd = NULL;
	}

	*hw_hpd = FUNC2(sizeof(struct hw_hpd), GFP_KERNEL);
	if (!*hw_hpd) {
		FUNC0(false);
		return;
	}

	FUNC1(*hw_hpd, id, en, ctx);
}