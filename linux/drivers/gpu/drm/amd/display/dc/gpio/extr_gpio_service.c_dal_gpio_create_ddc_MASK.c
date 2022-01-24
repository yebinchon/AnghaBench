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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct gpio_service {int /*<<< orphan*/  ctx; TYPE_2__ translate; } ;
struct gpio_ddc_hw_info {int dummy; } ;
struct ddc {void* pin_data; int /*<<< orphan*/  ctx; struct gpio_ddc_hw_info hw_info; void* pin_clock; } ;
typedef  enum gpio_id { ____Placeholder_gpio_id } gpio_id ;
struct TYPE_3__ {int /*<<< orphan*/  (* offset_to_id ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIO_ID_DDC_CLOCK ; 
 int /*<<< orphan*/  GPIO_ID_DDC_DATA ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT_STATE_DEFAULT ; 
 void* FUNC1 (struct gpio_service*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (struct ddc*) ; 
 struct ddc* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

struct ddc *FUNC6(
	struct gpio_service *service,
	uint32_t offset,
	uint32_t mask,
	struct gpio_ddc_hw_info *info)
{
	enum gpio_id id;
	uint32_t en;
	struct ddc *ddc;

	if (!service->translate.funcs->offset_to_id(offset, mask, &id, &en))
		return NULL;

	ddc = FUNC4(sizeof(struct ddc), GFP_KERNEL);

	if (!ddc) {
		FUNC0();
		return NULL;
	}

	ddc->pin_data = FUNC1(
		service, GPIO_ID_DDC_DATA, en, GPIO_PIN_OUTPUT_STATE_DEFAULT);

	if (!ddc->pin_data) {
		FUNC0();
		goto failure_1;
	}

	ddc->pin_clock = FUNC1(
		service, GPIO_ID_DDC_CLOCK, en, GPIO_PIN_OUTPUT_STATE_DEFAULT);

	if (!ddc->pin_clock) {
		FUNC0();
		goto failure_2;
	}

	ddc->hw_info = *info;

	ddc->ctx = service->ctx;

	return ddc;

failure_2:
	FUNC2(&ddc->pin_data);

failure_1:
	FUNC3(ddc);

	return NULL;
}