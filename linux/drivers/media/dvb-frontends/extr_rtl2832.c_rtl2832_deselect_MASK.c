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
struct rtl2832_dev {int /*<<< orphan*/  i2c_gate_work; } ;
struct i2c_mux_core {int dummy; } ;

/* Variables and functions */
 struct rtl2832_dev* FUNC0 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct i2c_mux_core *muxc, u32 chan_id)
{
	struct rtl2832_dev *dev = FUNC0(muxc);

	FUNC1(&dev->i2c_gate_work, FUNC2(100));
	return 0;
}