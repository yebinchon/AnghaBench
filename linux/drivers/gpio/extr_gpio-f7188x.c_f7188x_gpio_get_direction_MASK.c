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
 int /*<<< orphan*/  SIO_LD_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct f7188x_gpio_bank* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset)
{
	int err;
	struct f7188x_gpio_bank *bank = FUNC1(chip);
	struct f7188x_sio *sio = bank->data->sio;
	u8 dir;

	err = FUNC2(sio->addr);
	if (err)
		return err;
	FUNC5(sio->addr, SIO_LD_GPIO);

	dir = FUNC4(sio->addr, FUNC0(bank->regbase));

	FUNC3(sio->addr);

	return !(dir & 1 << offset);
}