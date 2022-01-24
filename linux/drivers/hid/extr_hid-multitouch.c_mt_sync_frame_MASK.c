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
struct mt_device {int /*<<< orphan*/  mt_io_flags; } ;
struct mt_application {int quirks; scalar_t__ left_button_state; scalar_t__ num_received; scalar_t__ timestamp; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_TIMESTAMP ; 
 int /*<<< orphan*/  MT_IO_FLAGS_ACTIVE_SLOTS ; 
 int /*<<< orphan*/  MT_IO_FLAGS_PENDING_SLOTS ; 
 int MT_QUIRK_WIN8_PTP_BUTTONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt_device*,struct mt_application*,struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mt_device *td, struct mt_application *app,
			  struct input_dev *input)
{
	if (app->quirks & MT_QUIRK_WIN8_PTP_BUTTONS)
		FUNC1(input, EV_KEY, BTN_LEFT, app->left_button_state);

	FUNC2(input);
	FUNC1(input, EV_MSC, MSC_TIMESTAMP, app->timestamp);
	FUNC3(input);

	FUNC4(td, app, input);

	app->num_received = 0;
	app->left_button_state = 0;

	if (FUNC6(MT_IO_FLAGS_ACTIVE_SLOTS, &td->mt_io_flags))
		FUNC5(MT_IO_FLAGS_PENDING_SLOTS, &td->mt_io_flags);
	else
		FUNC0(MT_IO_FLAGS_PENDING_SLOTS, &td->mt_io_flags);
	FUNC0(MT_IO_FLAGS_ACTIVE_SLOTS, &td->mt_io_flags);
}