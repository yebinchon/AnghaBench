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
typedef  int u8 ;
struct seq_file {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct adnp {int reg_shift; int /*<<< orphan*/  i2c_lock; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct adnp*) ; 
 scalar_t__ FUNC2 (struct adnp*) ; 
 scalar_t__ FUNC3 (struct adnp*) ; 
 scalar_t__ FUNC4 (struct adnp*) ; 
 int FUNC5 (struct adnp*,scalar_t__,int*) ; 
 struct adnp* FUNC6 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,char*,unsigned int,char const*,char const*,char const*,char const*) ; 

__attribute__((used)) static void FUNC10(struct seq_file *s, struct gpio_chip *chip)
{
	struct adnp *adnp = FUNC6(chip);
	unsigned int num_regs = 1 << adnp->reg_shift, i, j;
	int err;

	for (i = 0; i < num_regs; i++) {
		u8 ddr, plr, ier, isr;

		FUNC7(&adnp->i2c_lock);

		err = FUNC5(adnp, FUNC1(adnp) + i, &ddr);
		if (err < 0)
			goto unlock;

		err = FUNC5(adnp, FUNC4(adnp) + i, &plr);
		if (err < 0)
			goto unlock;

		err = FUNC5(adnp, FUNC2(adnp) + i, &ier);
		if (err < 0)
			goto unlock;

		err = FUNC5(adnp, FUNC3(adnp) + i, &isr);
		if (err < 0)
			goto unlock;

		FUNC8(&adnp->i2c_lock);

		for (j = 0; j < 8; j++) {
			unsigned int bit = (i << adnp->reg_shift) + j;
			const char *direction = "input ";
			const char *level = "low ";
			const char *interrupt = "disabled";
			const char *pending = "";

			if (ddr & FUNC0(j))
				direction = "output";

			if (plr & FUNC0(j))
				level = "high";

			if (ier & FUNC0(j))
				interrupt = "enabled ";

			if (isr & FUNC0(j))
				pending = "pending";

			FUNC9(s, "%2u: %s %s IRQ %s %s\n", bit,
				   direction, level, interrupt, pending);
		}
	}

	return;

unlock:
	FUNC8(&adnp->i2c_lock);
}