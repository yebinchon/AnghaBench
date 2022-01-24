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
struct picolcd_data {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REPORT_BRIGHTNESS ; 
 int /*<<< orphan*/  REPORT_CONTRAST ; 
 int /*<<< orphan*/  REPORT_EE_READ ; 
 int /*<<< orphan*/  REPORT_EE_WRITE ; 
 int /*<<< orphan*/  REPORT_IR_DATA ; 
 int /*<<< orphan*/  REPORT_KEY_STATE ; 
 int /*<<< orphan*/  REPORT_LED_STATE ; 
 int /*<<< orphan*/  REPORT_READ_MEMORY ; 
 int /*<<< orphan*/  REPORT_RESET ; 
 int /*<<< orphan*/  REPORT_WRITE_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct picolcd_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct picolcd_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct picolcd_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct picolcd_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct picolcd_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct picolcd_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct hid_device*) ; 
 int FUNC7 (struct picolcd_data*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct picolcd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct picolcd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct picolcd_data*) ; 
 int FUNC11 (struct picolcd_data*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct picolcd_data*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct picolcd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct hid_device*) ; 

__attribute__((used)) static int FUNC15(struct hid_device *hdev, struct picolcd_data *data)
{
	int error;

	/* Setup keypad input device */
	error = FUNC11(data, FUNC6(REPORT_KEY_STATE, hdev));
	if (error)
		goto err;

	/* Setup CIR input device */
	error = FUNC8(data, FUNC6(REPORT_IR_DATA, hdev));
	if (error)
		goto err;

	/* Set up the framebuffer device */
	error = FUNC10(data);
	if (error)
		goto err;

	/* Setup lcd class device */
	error = FUNC12(data, FUNC14(REPORT_CONTRAST, hdev));
	if (error)
		goto err;

	/* Setup backlight class device */
	error = FUNC7(data, FUNC14(REPORT_BRIGHTNESS, hdev));
	if (error)
		goto err;

	/* Setup the LED class devices */
	error = FUNC13(data, FUNC14(REPORT_LED_STATE, hdev));
	if (error)
		goto err;

	FUNC9(data, FUNC14(REPORT_EE_READ, hdev),
			FUNC14(REPORT_EE_WRITE, hdev),
			FUNC14(REPORT_READ_MEMORY, hdev),
			FUNC14(REPORT_WRITE_MEMORY, hdev),
			FUNC14(REPORT_RESET, hdev));
	return 0;
err:
	FUNC5(data);
	FUNC0(data);
	FUNC4(data);
	FUNC2(data);
	FUNC1(data);
	FUNC3(data);
	return error;
}