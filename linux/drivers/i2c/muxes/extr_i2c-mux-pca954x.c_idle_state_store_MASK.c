#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pca954x {scalar_t__ last_chan; int /*<<< orphan*/  idle_state; TYPE_1__* chip; } ;
struct i2c_mux_core {int /*<<< orphan*/  parent; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int nchans; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  I2C_LOCK_SEGMENT ; 
 int MUX_IDLE_AS_IS ; 
 int MUX_IDLE_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct i2c_mux_core* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pca954x* FUNC3 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct i2c_mux_core*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct i2c_client *client = FUNC7(dev);
	struct i2c_mux_core *muxc = FUNC1(client);
	struct pca954x *data = FUNC3(muxc);
	int val;
	int ret;

	ret = FUNC5(buf, 0, &val);
	if (ret < 0)
		return ret;

	if (val != MUX_IDLE_AS_IS && val != MUX_IDLE_DISCONNECT &&
	    (val < 0 || val >= data->chip->nchans))
		return -EINVAL;

	FUNC2(muxc->parent, I2C_LOCK_SEGMENT);

	FUNC0(data->idle_state, val);
	/*
	 * Set the mux into a state consistent with the new
	 * idle_state.
	 */
	if (data->last_chan || val != MUX_IDLE_DISCONNECT)
		ret = FUNC6(muxc, 0);

	FUNC4(muxc->parent, I2C_LOCK_SEGMENT);

	return ret < 0 ? ret : count;
}