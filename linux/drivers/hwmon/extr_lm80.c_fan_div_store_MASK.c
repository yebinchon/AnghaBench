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
struct lm80_data {int** fan; int* fan_div; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM80_REG_FANDIV ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned long) ; 
 struct lm80_data* FUNC5 (struct device*) ; 
 size_t f_min ; 
 int FUNC6 (char const*,int,unsigned long*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{
	int nr = FUNC11(attr)->index;
	struct lm80_data *data = FUNC5(dev);
	struct i2c_client *client = data->client;
	unsigned long min, val;
	u8 reg;
	int rv;

	rv = FUNC6(buf, 10, &val);
	if (rv < 0)
		return rv;

	/* Save fan_min */
	FUNC9(&data->update_lock);
	min = FUNC1(data->fan[f_min][nr],
			   FUNC0(data->fan_div[nr]));

	switch (val) {
	case 1:
		data->fan_div[nr] = 0;
		break;
	case 2:
		data->fan_div[nr] = 1;
		break;
	case 4:
		data->fan_div[nr] = 2;
		break;
	case 8:
		data->fan_div[nr] = 3;
		break;
	default:
		FUNC4(dev,
			"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\n",
			val);
		FUNC10(&data->update_lock);
		return -EINVAL;
	}

	rv = FUNC7(client, LM80_REG_FANDIV);
	if (rv < 0) {
		FUNC10(&data->update_lock);
		return rv;
	}
	reg = (rv & ~(3 << (2 * (nr + 1))))
	    | (data->fan_div[nr] << (2 * (nr + 1)));
	FUNC8(client, LM80_REG_FANDIV, reg);

	/* Restore fan_min */
	data->fan[f_min][nr] = FUNC2(min, FUNC0(data->fan_div[nr]));
	FUNC8(client, FUNC3(nr + 1),
			 data->fan[f_min][nr]);
	FUNC10(&data->update_lock);

	return count;
}