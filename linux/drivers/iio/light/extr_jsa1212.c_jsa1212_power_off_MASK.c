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
struct jsa1212_data {int /*<<< orphan*/  lock; TYPE_1__* client; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int JSA1212_CONF_ALS_DISABLE ; 
 int JSA1212_CONF_ALS_MASK ; 
 int JSA1212_CONF_PXS_DISABLE ; 
 int JSA1212_CONF_PXS_MASK ; 
 int /*<<< orphan*/  JSA1212_CONF_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct jsa1212_data *data)
{
	int ret;

	FUNC1(&data->lock);

	ret = FUNC3(data->regmap, JSA1212_CONF_REG,
				JSA1212_CONF_ALS_MASK |
				JSA1212_CONF_PXS_MASK,
				JSA1212_CONF_ALS_DISABLE |
				JSA1212_CONF_PXS_DISABLE);

	if (ret < 0)
		FUNC0(&data->client->dev, "power off cmd failed\n");

	FUNC2(&data->lock);

	return ret;
}