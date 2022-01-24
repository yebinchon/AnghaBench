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
struct touchscreen_data {int /*<<< orphan*/  input; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data, int len, unsigned char *msg)
{
	struct touchscreen_data *ts = data;

	if (len == 4) {
		FUNC1(ts->input, ABS_X,
				 FUNC0((__be16 *) &msg[2]));
		FUNC1(ts->input, ABS_Y,
				 FUNC0((__be16 *) &msg[0]));
		FUNC2(ts->input, BTN_TOUCH, 1);
		FUNC3(ts->input);
	} else if (len == 0) {
		FUNC1(ts->input, ABS_X, 0);
		FUNC1(ts->input, ABS_Y, 0);
		FUNC2(ts->input, BTN_TOUCH, 0);
		FUNC3(ts->input);
	}
}