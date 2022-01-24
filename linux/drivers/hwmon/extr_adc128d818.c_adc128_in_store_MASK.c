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
typedef  int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adc128_data {int** in; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  client; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (long,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct adc128_data* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			       struct device_attribute *attr, const char *buf,
			       size_t count)
{
	struct adc128_data *data = FUNC4(dev);
	int index = FUNC9(attr)->index;
	int nr = FUNC9(attr)->nr;
	u8 reg, regval;
	long val;
	int err;

	err = FUNC6(buf, 10, &val);
	if (err < 0)
		return err;

	FUNC7(&data->update_lock);
	/* 10 mV LSB on limit registers */
	regval = FUNC3(FUNC2(val, 10), 0, 255);
	data->in[index][nr] = regval << 4;
	reg = index == 1 ? FUNC1(nr) : FUNC0(nr);
	FUNC5(data->client, reg, regval);
	FUNC8(&data->update_lock);

	return count;
}