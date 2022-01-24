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
typedef  int u8 ;
struct gpio_chip {int dummy; } ;
struct f7188x_sio {int /*<<< orphan*/  addr; } ;
struct f7188x_gpio_bank {int /*<<< orphan*/  regbase; TYPE_1__* data; } ;
struct TYPE_2__ {struct f7188x_sio* sio; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  SIO_LD_GPIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct f7188x_gpio_bank* FUNC4 (struct gpio_chip*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct gpio_chip *chip, unsigned offset)
{
	int err;
	struct f7188x_gpio_bank *bank = FUNC4(chip);
	struct f7188x_sio *sio = bank->data->sio;
	u8 dir, data;

	err = FUNC5(sio->addr);
	if (err)
		return err;
	FUNC8(sio->addr, SIO_LD_GPIO);

	dir = FUNC7(sio->addr, FUNC3(bank->regbase));
	dir = !!(dir & FUNC0(offset));
	if (dir)
		data = FUNC7(sio->addr, FUNC2(bank->regbase));
	else
		data = FUNC7(sio->addr, FUNC1(bank->regbase));

	FUNC6(sio->addr);

	return !!(data & FUNC0(offset));
}