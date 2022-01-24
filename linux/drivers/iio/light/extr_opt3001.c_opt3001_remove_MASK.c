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
typedef  int u16 ;
struct opt3001 {int /*<<< orphan*/  dev; int /*<<< orphan*/  client; scalar_t__ use_irq; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPT3001_CONFIGURATION ; 
 int /*<<< orphan*/  OPT3001_CONFIGURATION_M_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct opt3001* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct opt3001*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct iio_dev *iio = FUNC2(client);
	struct opt3001 *opt = FUNC5(iio);
	int ret;
	u16 reg;

	if (opt->use_irq)
		FUNC1(client->irq, iio);

	ret = FUNC3(opt->client, OPT3001_CONFIGURATION);
	if (ret < 0) {
		FUNC0(opt->dev, "failed to read register %02x\n",
				OPT3001_CONFIGURATION);
		return ret;
	}

	reg = ret;
	FUNC6(opt, &reg, OPT3001_CONFIGURATION_M_SHUTDOWN);

	ret = FUNC4(opt->client, OPT3001_CONFIGURATION,
			reg);
	if (ret < 0) {
		FUNC0(opt->dev, "failed to write register %02x\n",
				OPT3001_CONFIGURATION);
		return ret;
	}

	return 0;
}