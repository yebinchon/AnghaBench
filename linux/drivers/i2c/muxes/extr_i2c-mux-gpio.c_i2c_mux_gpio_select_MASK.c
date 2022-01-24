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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_mux_core {int dummy; } ;
struct gpiomux {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpiomux*,int /*<<< orphan*/ ) ; 
 struct gpiomux* FUNC1 (struct i2c_mux_core*) ; 

__attribute__((used)) static int FUNC2(struct i2c_mux_core *muxc, u32 chan)
{
	struct gpiomux *mux = FUNC1(muxc);

	FUNC0(mux, chan);

	return 0;
}