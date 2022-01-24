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
struct input_polled_dev {int /*<<< orphan*/  input; struct gpio_decoder* private; } ;
struct gpio_decoder {int last_stable; int /*<<< orphan*/  axis; } ;

/* Variables and functions */
 int FUNC0 (struct gpio_decoder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct input_polled_dev *poll_dev)
{
	struct gpio_decoder *decoder = poll_dev->private;
	int state;

	state = FUNC0(decoder);
	if (state >= 0 && state != decoder->last_stable) {
		FUNC1(poll_dev->input, decoder->axis, state);
		FUNC2(poll_dev->input);
		decoder->last_stable = state;
	}
}