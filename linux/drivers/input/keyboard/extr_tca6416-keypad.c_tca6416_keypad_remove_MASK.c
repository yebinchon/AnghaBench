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
struct tca6416_keypad_chip {int /*<<< orphan*/  input; int /*<<< orphan*/  irqnum; int /*<<< orphan*/  use_polling; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tca6416_keypad_chip*) ; 
 struct tca6416_keypad_chip* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tca6416_keypad_chip*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct tca6416_keypad_chip *chip = FUNC2(client);

	if (!chip->use_polling) {
		FUNC1(chip->irqnum, chip);
		FUNC0(chip->irqnum);
	}

	FUNC3(chip->input);
	FUNC4(chip);

	return 0;
}