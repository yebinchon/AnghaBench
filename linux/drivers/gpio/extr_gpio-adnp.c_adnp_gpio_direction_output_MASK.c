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
struct gpio_chip {int dummy; } ;
struct adnp {unsigned int reg_shift; int /*<<< orphan*/  i2c_lock; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EPERM ; 
 scalar_t__ FUNC1 (struct adnp*) ; 
 int /*<<< orphan*/  FUNC2 (struct adnp*,unsigned int,int) ; 
 int FUNC3 (struct adnp*,scalar_t__,int*) ; 
 int FUNC4 (struct adnp*,scalar_t__,int) ; 
 struct adnp* FUNC5 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct gpio_chip *chip, unsigned offset,
				      int value)
{
	struct adnp *adnp = FUNC5(chip);
	unsigned int reg = offset >> adnp->reg_shift;
	unsigned int pos = offset & 7;
	int err;
	u8 val;

	FUNC6(&adnp->i2c_lock);

	err = FUNC3(adnp, FUNC1(adnp) + reg, &val);
	if (err < 0)
		goto out;

	val |= FUNC0(pos);

	err = FUNC4(adnp, FUNC1(adnp) + reg, val);
	if (err < 0)
		goto out;

	err = FUNC3(adnp, FUNC1(adnp) + reg, &val);
	if (err < 0)
		goto out;

	if (!(val & FUNC0(pos))) {
		err = -EPERM;
		goto out;
	}

	FUNC2(adnp, offset, value);
	err = 0;

out:
	FUNC7(&adnp->i2c_lock);
	return err;
}