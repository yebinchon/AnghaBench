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
struct tegra_gpio_info {struct tegra_gpio_bank* bank_info; } ;
struct tegra_gpio_bank {unsigned int* dbc_cnt; int /*<<< orphan*/ * dbc_lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 size_t FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_gpio_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_gpio_info*,unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 struct tegra_gpio_info* FUNC5 (struct gpio_chip*) ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_gpio_info*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_gpio_info*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct gpio_chip *chip, unsigned int offset,
				   unsigned int debounce)
{
	struct tegra_gpio_info *tgi = FUNC5(chip);
	struct tegra_gpio_bank *bank = &tgi->bank_info[FUNC1(offset)];
	unsigned int debounce_ms = FUNC0(debounce, 1000);
	unsigned long flags;
	unsigned int port;

	if (!debounce_ms) {
		FUNC9(tgi, FUNC3(tgi, offset),
				      offset, 0);
		return 0;
	}

	debounce_ms = FUNC6(debounce_ms, 255U);
	port = FUNC4(offset);

	/* There is only one debounce count register per port and hence
	 * set the maximum of current and requested debounce time.
	 */
	FUNC7(&bank->dbc_lock[port], flags);
	if (bank->dbc_cnt[port] < debounce_ms) {
		FUNC10(tgi, debounce_ms, FUNC2(tgi, offset));
		bank->dbc_cnt[port] = debounce_ms;
	}
	FUNC8(&bank->dbc_lock[port], flags);

	FUNC9(tgi, FUNC3(tgi, offset), offset, 1);

	return 0;
}