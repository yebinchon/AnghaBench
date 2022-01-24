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
struct jsa1212_data {TYPE_1__* client; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  JSA1212_ALS_DELAY_MS ; 
 int /*<<< orphan*/  JSA1212_ALS_DT1_REG ; 
 int /*<<< orphan*/  JSA1212_CONF_ALS_DISABLE ; 
 int /*<<< orphan*/  JSA1212_CONF_ALS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct jsa1212_data*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct jsa1212_data *data,
				unsigned int *val)
{
	int ret;
	__le16 als_data;

	ret = FUNC1(data, JSA1212_CONF_ALS_ENABLE);
	if (ret < 0)
		return ret;

	/* Delay for data output */
	FUNC3(JSA1212_ALS_DELAY_MS);

	/* Read 12 bit data */
	ret = FUNC4(data->regmap, JSA1212_ALS_DT1_REG, &als_data, 2);
	if (ret < 0) {
		FUNC0(&data->client->dev, "als data read err\n");
		goto als_data_read_err;
	}

	*val = FUNC2(als_data);

als_data_read_err:
	return FUNC1(data, JSA1212_CONF_ALS_DISABLE);
}