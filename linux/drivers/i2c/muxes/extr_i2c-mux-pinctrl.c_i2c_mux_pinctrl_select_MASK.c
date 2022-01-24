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
typedef  size_t u32 ;
struct i2c_mux_pinctrl {int /*<<< orphan*/ * states; int /*<<< orphan*/  pinctrl; } ;
struct i2c_mux_core {int dummy; } ;

/* Variables and functions */
 struct i2c_mux_pinctrl* FUNC0 (struct i2c_mux_core*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_mux_core *muxc, u32 chan)
{
	struct i2c_mux_pinctrl *mux = FUNC0(muxc);

	return FUNC1(mux->pinctrl, mux->states[chan]);
}