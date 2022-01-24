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
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct axxia_i2c_dev {scalar_t__ msg_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  MST_STATUS_TSS ; 
 int SEQ_LEN ; 
 scalar_t__ FUNC0 (struct i2c_msg*,int) ; 
 int FUNC1 (struct axxia_i2c_dev*,struct i2c_msg*,int) ; 
 int FUNC2 (struct axxia_i2c_dev*,struct i2c_msg*) ; 
 struct axxia_i2c_dev* FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct axxia_i2c_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
{
	struct axxia_i2c_dev *idev = FUNC3(adap);
	int i;
	int ret = 0;

	idev->msg_err = 0;

	if (FUNC0(msgs, num)) {
		ret = FUNC2(idev, msgs);
		return ret ? : SEQ_LEN;
	}

	FUNC4(idev, MST_STATUS_TSS);

	for (i = 0; ret == 0 && i < num; ++i)
		ret = FUNC1(idev, &msgs[i], i == (num - 1));

	return ret ? : i;
}