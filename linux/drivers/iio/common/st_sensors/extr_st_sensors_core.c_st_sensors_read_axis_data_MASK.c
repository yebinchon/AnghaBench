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
typedef  scalar_t__ u8 ;
struct st_sensor_data {int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ shift; scalar_t__ realbits; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; TYPE_1__ scan_type; } ;
typedef  int s8 ;
typedef  int s32 ;
typedef  int s16 ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,int) ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 struct st_sensor_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (unsigned int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,unsigned int) ; 
 scalar_t__ FUNC6 (scalar_t__*) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
				     struct iio_chan_spec const *ch, int *data)
{
	int err;
	u8 *outdata;
	struct st_sensor_data *sdata = FUNC2(indio_dev);
	unsigned int byte_for_channel;

	byte_for_channel = FUNC0(ch->scan_type.realbits +
					ch->scan_type.shift, 8);
	outdata = FUNC4(byte_for_channel, GFP_DMA | GFP_KERNEL);
	if (!outdata)
		return -ENOMEM;

	err = FUNC5(sdata->regmap, ch->address,
			       outdata, byte_for_channel);
	if (err < 0)
		goto st_sensors_free_memory;

	if (byte_for_channel == 1)
		*data = (s8)*outdata;
	else if (byte_for_channel == 2)
		*data = (s16)FUNC1(outdata);
	else if (byte_for_channel == 3)
		*data = (s32)FUNC6(outdata);

st_sensors_free_memory:
	FUNC3(outdata);

	return err;
}