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
typedef  int u32 ;
struct i2c_msg {int addr; int flags; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct geni_i2c_dev {scalar_t__ err; struct i2c_msg* cur; TYPE_1__ se; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 int SLV_ADDR_MSK ; 
 int SLV_ADDR_SHFT ; 
 int STOP_STRETCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct geni_i2c_dev*,struct i2c_msg*,int) ; 
 int FUNC2 (struct geni_i2c_dev*,struct i2c_msg*,int) ; 
 struct geni_i2c_dev* FUNC3 (struct i2c_adapter*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct geni_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_adapter *adap,
			 struct i2c_msg msgs[],
			 int num)
{
	struct geni_i2c_dev *gi2c = FUNC3(adap);
	int i, ret;

	gi2c->err = 0;
	FUNC10(&gi2c->done);
	ret = FUNC4(gi2c->se.dev);
	if (ret < 0) {
		FUNC0(gi2c->se.dev, "error turning SE resources:%d\n", ret);
		FUNC7(gi2c->se.dev);
		/* Set device in suspended since resume failed */
		FUNC8(gi2c->se.dev);
		return ret;
	}

	FUNC9(gi2c);
	for (i = 0; i < num; i++) {
		u32 m_param = i < (num - 1) ? STOP_STRETCH : 0;

		m_param |= ((msgs[i].addr << SLV_ADDR_SHFT) & SLV_ADDR_MSK);

		gi2c->cur = &msgs[i];
		if (msgs[i].flags & I2C_M_RD)
			ret = FUNC1(gi2c, &msgs[i], m_param);
		else
			ret = FUNC2(gi2c, &msgs[i], m_param);

		if (ret)
			break;
	}
	if (ret == 0)
		ret = num;

	FUNC5(gi2c->se.dev);
	FUNC6(gi2c->se.dev);
	gi2c->cur = NULL;
	gi2c->err = 0;
	return ret;
}