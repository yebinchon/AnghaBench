#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct of_device_id {int /*<<< orphan*/  data; } ;
struct max9611_dev {unsigned int shunt_resistor_uohm; int /*<<< orphan*/  lock; struct i2c_client* i2c_client; TYPE_2__* dev; } ;
struct TYPE_6__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,char const* const,struct device_node const*) ; 
 struct iio_dev* FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_2__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 struct max9611_dev* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  indio_info ; 
 int /*<<< orphan*/  max9611_channels ; 
 int FUNC6 (struct max9611_dev*) ; 
 int /*<<< orphan*/  max9611_of_table ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC9 (struct device_node const*,char const* const,unsigned int*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	const char * const shunt_res_prop = "shunt-resistor-micro-ohms";
	const struct device_node *of_node = client->dev.of_node;
	const struct of_device_id *of_id =
		FUNC8(max9611_of_table, &client->dev);
	struct max9611_dev *max9611;
	struct iio_dev *indio_dev;
	unsigned int of_shunt;
	int ret;

	indio_dev = FUNC2(&client->dev, sizeof(*max9611));
	if (!indio_dev)
		return -ENOMEM;

	FUNC4(client, indio_dev);

	max9611			= FUNC5(indio_dev);
	max9611->dev		= &client->dev;
	max9611->i2c_client	= client;
	FUNC7(&max9611->lock);

	ret = FUNC9(of_node, shunt_res_prop, &of_shunt);
	if (ret) {
		FUNC1(&client->dev,
			"Missing %s property for %pOF node\n",
			shunt_res_prop, of_node);
		return ret;
	}
	max9611->shunt_resistor_uohm = of_shunt;

	ret = FUNC6(max9611);
	if (ret)
		return ret;

	indio_dev->dev.parent	= &client->dev;
	indio_dev->dev.of_node	= client->dev.of_node;
	indio_dev->name		= of_id->data;
	indio_dev->modes	= INDIO_DIRECT_MODE;
	indio_dev->info		= &indio_info;
	indio_dev->channels	= max9611_channels;
	indio_dev->num_channels	= FUNC0(max9611_channels);

	return FUNC3(&client->dev, indio_dev);
}