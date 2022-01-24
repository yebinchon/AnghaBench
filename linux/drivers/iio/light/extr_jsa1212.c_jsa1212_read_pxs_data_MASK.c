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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  JSA1212_CONF_PXS_DISABLE ; 
 int /*<<< orphan*/  JSA1212_CONF_PXS_ENABLE ; 
 unsigned int JSA1212_PXS_DATA_MASK ; 
 int /*<<< orphan*/  JSA1212_PXS_DATA_REG ; 
 int /*<<< orphan*/  JSA1212_PXS_DELAY_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct jsa1212_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct jsa1212_data *data,
				unsigned int *val)
{
	int ret;
	unsigned int pxs_data;

	ret = FUNC1(data, JSA1212_CONF_PXS_ENABLE);
	if (ret < 0)
		return ret;

	/* Delay for data output */
	FUNC2(JSA1212_PXS_DELAY_MS);

	/* Read out all data */
	ret = FUNC3(data->regmap, JSA1212_PXS_DATA_REG, &pxs_data);
	if (ret < 0) {
		FUNC0(&data->client->dev, "pxs data read err\n");
		goto pxs_data_read_err;
	}

	*val = pxs_data & JSA1212_PXS_DATA_MASK;

pxs_data_read_err:
	return FUNC1(data, JSA1212_CONF_PXS_DISABLE);
}