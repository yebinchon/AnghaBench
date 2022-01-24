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
typedef  int /*<<< orphan*/  uint32_t ;
struct hw_gpio_pin {TYPE_3__* funcs; } ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct gpio_service {TYPE_2__ factory; int /*<<< orphan*/ * busyness; } ;
struct gpio {int id; int mode; struct hw_gpio_pin* pin; int /*<<< orphan*/  en; struct gpio_service* service; } ;
typedef  enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef  enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;
typedef  enum gpio_id { ____Placeholder_gpio_id } gpio_id ;
struct TYPE_6__ {int /*<<< orphan*/  (* open ) (struct hw_gpio_pin*,int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* define_hpd_registers ) (struct hw_gpio_pin*,int /*<<< orphan*/ ) ;struct hw_gpio_pin* (* get_hpd_pin ) (struct gpio*) ;int /*<<< orphan*/  (* define_generic_registers ) (struct hw_gpio_pin*,int /*<<< orphan*/ ) ;struct hw_gpio_pin* (* get_generic_pin ) (struct gpio*) ;int /*<<< orphan*/  (* define_ddc_registers ) (struct hw_gpio_pin*,int /*<<< orphan*/ ) ;struct hw_gpio_pin* (* get_ddc_pin ) (struct gpio*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  GPIO_ID_DDC_CLOCK 133 
#define  GPIO_ID_DDC_DATA 132 
#define  GPIO_ID_GENERIC 131 
#define  GPIO_ID_GSL 130 
#define  GPIO_ID_HPD 129 
#define  GPIO_ID_SYNC 128 
 int GPIO_RESULT_DEVICE_BUSY ; 
 int GPIO_RESULT_NON_SPECIFIC_ERROR ; 
 int GPIO_RESULT_OK ; 
 int GPIO_RESULT_OPEN_FAILED ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_service*,struct hw_gpio_pin**) ; 
 scalar_t__ FUNC2 (struct gpio_service*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_service*,int,int /*<<< orphan*/ ) ; 
 struct hw_gpio_pin* FUNC4 (struct gpio*) ; 
 int /*<<< orphan*/  FUNC5 (struct hw_gpio_pin*,int /*<<< orphan*/ ) ; 
 struct hw_gpio_pin* FUNC6 (struct gpio*) ; 
 int /*<<< orphan*/  FUNC7 (struct hw_gpio_pin*,int /*<<< orphan*/ ) ; 
 struct hw_gpio_pin* FUNC8 (struct gpio*) ; 
 int /*<<< orphan*/  FUNC9 (struct hw_gpio_pin*,int /*<<< orphan*/ ) ; 
 struct hw_gpio_pin* FUNC10 (struct gpio*) ; 
 int /*<<< orphan*/  FUNC11 (struct hw_gpio_pin*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hw_gpio_pin*,int) ; 

enum gpio_result FUNC13(
	struct gpio *gpio)
{
	struct gpio_service *service = gpio->service;
	enum gpio_id id = gpio->id;
	uint32_t en = gpio->en;
	enum gpio_mode mode = gpio->mode;

	struct hw_gpio_pin **pin = &gpio->pin;


	if (!service->busyness[id]) {
		FUNC0(false);
		return GPIO_RESULT_OPEN_FAILED;
	}

	if (FUNC2(service, id, en)) {
		FUNC0(false);
		return GPIO_RESULT_DEVICE_BUSY;
	}

	switch (id) {
	case GPIO_ID_DDC_DATA:
		*pin = service->factory.funcs->get_ddc_pin(gpio);
		service->factory.funcs->define_ddc_registers(*pin, en);
	break;
	case GPIO_ID_DDC_CLOCK:
		*pin = service->factory.funcs->get_ddc_pin(gpio);
		service->factory.funcs->define_ddc_registers(*pin, en);
	break;
	case GPIO_ID_GENERIC:
		*pin = service->factory.funcs->get_generic_pin(gpio);
		service->factory.funcs->define_generic_registers(*pin, en);
	break;
	case GPIO_ID_HPD:
		*pin = service->factory.funcs->get_hpd_pin(gpio);
		service->factory.funcs->define_hpd_registers(*pin, en);
	break;

	//TODO: gsl and sync support? create_sync and create_gsl are NULL
	case GPIO_ID_SYNC:
	case GPIO_ID_GSL:
	break;
	default:
		FUNC0(false);
		return GPIO_RESULT_NON_SPECIFIC_ERROR;
	}

	if (!*pin) {
		FUNC0(false);
		return GPIO_RESULT_NON_SPECIFIC_ERROR;
	}

	if (!(*pin)->funcs->open(*pin, mode)) {
		FUNC0(false);
		FUNC1(service, pin);
		return GPIO_RESULT_OPEN_FAILED;
	}

	FUNC3(service, id, en);
	return GPIO_RESULT_OK;
}