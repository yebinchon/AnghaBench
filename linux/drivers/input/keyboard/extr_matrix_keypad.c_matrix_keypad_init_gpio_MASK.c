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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct matrix_keypad_platform_data {int num_col_gpios; int num_row_gpios; scalar_t__ clustered_irq; int clustered_irq_flags; int /*<<< orphan*/ * col_gpios; int /*<<< orphan*/ * row_gpios; int /*<<< orphan*/  active_low; } ;
struct matrix_keypad {struct matrix_keypad_platform_data* pdata; } ;

/* Variables and functions */
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct matrix_keypad*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct matrix_keypad*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  matrix_keypad_interrupt ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,char*,struct matrix_keypad*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev,
				   struct matrix_keypad *keypad)
{
	const struct matrix_keypad_platform_data *pdata = keypad->pdata;
	int i, err;

	/* initialized strobe lines as outputs, activated */
	for (i = 0; i < pdata->num_col_gpios; i++) {
		err = FUNC6(pdata->col_gpios[i], "matrix_kbd_col");
		if (err) {
			FUNC0(&pdev->dev,
				"failed to request GPIO%d for COL%d\n",
				pdata->col_gpios[i], i);
			goto err_free_cols;
		}

		FUNC4(pdata->col_gpios[i], !pdata->active_low);
	}

	for (i = 0; i < pdata->num_row_gpios; i++) {
		err = FUNC6(pdata->row_gpios[i], "matrix_kbd_row");
		if (err) {
			FUNC0(&pdev->dev,
				"failed to request GPIO%d for ROW%d\n",
				pdata->row_gpios[i], i);
			goto err_free_rows;
		}

		FUNC3(pdata->row_gpios[i]);
	}

	if (pdata->clustered_irq > 0) {
		err = FUNC8(pdata->clustered_irq,
				matrix_keypad_interrupt,
				pdata->clustered_irq_flags,
				"matrix-keypad", keypad);
		if (err < 0) {
			FUNC0(&pdev->dev,
				"Unable to acquire clustered interrupt\n");
			goto err_free_rows;
		}
	} else {
		for (i = 0; i < pdata->num_row_gpios; i++) {
			err = FUNC8(
					FUNC7(pdata->row_gpios[i]),
					matrix_keypad_interrupt,
					IRQF_TRIGGER_RISING |
					IRQF_TRIGGER_FALLING,
					"matrix-keypad", keypad);
			if (err < 0) {
				FUNC0(&pdev->dev,
					"Unable to acquire interrupt for GPIO line %i\n",
					pdata->row_gpios[i]);
				goto err_free_irqs;
			}
		}
	}

	/* initialized as disabled - enabled by input->open */
	FUNC1(keypad);
	return 0;

err_free_irqs:
	while (--i >= 0)
		FUNC2(FUNC7(pdata->row_gpios[i]), keypad);
	i = pdata->num_row_gpios;
err_free_rows:
	while (--i >= 0)
		FUNC5(pdata->row_gpios[i]);
	i = pdata->num_col_gpios;
err_free_cols:
	while (--i >= 0)
		FUNC5(pdata->col_gpios[i]);

	return err;
}