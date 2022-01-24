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
typedef  int /*<<< orphan*/  u8 ;
struct sps30_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  SPS30_CRC8_POLYNOMIAL ; 
 int /*<<< orphan*/  SPS30_READ_SERIAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sps30_state*) ; 
 struct iio_dev* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct iio_dev*) ; 
 struct sps30_state* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sps30_channels ; 
 int /*<<< orphan*/  sps30_crc8_table ; 
 int FUNC12 (struct sps30_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (struct sps30_state*) ; 
 int /*<<< orphan*/  sps30_info ; 
 int /*<<< orphan*/  sps30_scan_masks ; 
 int /*<<< orphan*/  sps30_stop_meas ; 
 int /*<<< orphan*/  sps30_trigger_handler ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client)
{
	struct iio_dev *indio_dev;
	struct sps30_state *state;
	u8 buf[32];
	int ret;

	if (!FUNC8(client->adapter, I2C_FUNC_I2C))
		return -EOPNOTSUPP;

	indio_dev = FUNC5(&client->dev, sizeof(*state));
	if (!indio_dev)
		return -ENOMEM;

	state = FUNC10(indio_dev);
	FUNC9(client, indio_dev);
	state->client = client;
	state->state = RESET;
	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &sps30_info;
	indio_dev->name = client->name;
	indio_dev->channels = sps30_channels;
	indio_dev->num_channels = FUNC0(sps30_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->available_scan_masks = sps30_scan_masks;

	FUNC11(&state->lock);
	FUNC1(sps30_crc8_table, SPS30_CRC8_POLYNOMIAL);

	ret = FUNC13(state);
	if (ret) {
		FUNC2(&client->dev, "failed to reset device\n");
		return ret;
	}

	ret = FUNC12(state, SPS30_READ_SERIAL, buf, sizeof(buf));
	if (ret) {
		FUNC2(&client->dev, "failed to read serial number\n");
		return ret;
	}
	/* returned serial number is already NUL terminated */
	FUNC3(&client->dev, "serial number: %s\n", buf);

	ret = FUNC4(&client->dev, sps30_stop_meas, state);
	if (ret)
		return ret;

	ret = FUNC7(&client->dev, indio_dev, NULL,
					      sps30_trigger_handler, NULL);
	if (ret)
		return ret;

	return FUNC6(&client->dev, indio_dev);
}