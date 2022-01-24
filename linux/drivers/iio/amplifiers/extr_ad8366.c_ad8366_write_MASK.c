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
struct iio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  num_channels; } ;
struct ad8366_state {int type; unsigned char* data; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
#define  ID_AD8366 130 
#define  ID_ADA4961 129 
#define  ID_ADL5240 128 
 unsigned char FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct ad8366_state* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			unsigned char ch_a, unsigned char ch_b)
{
	struct ad8366_state *st = FUNC2(indio_dev);
	int ret;

	switch (st->type) {
	case ID_AD8366:
		ch_a = FUNC0(ch_a & 0x3F);
		ch_b = FUNC0(ch_b & 0x3F);

		st->data[0] = ch_b >> 4;
		st->data[1] = (ch_b << 4) | (ch_a >> 2);
		break;
	case ID_ADA4961:
		st->data[0] = ch_a & 0x1F;
		break;
	case ID_ADL5240:
		st->data[0] = (ch_a & 0x3F);
		break;
	}

	ret = FUNC3(st->spi, st->data, indio_dev->num_channels);
	if (ret < 0)
		FUNC1(&indio_dev->dev, "write failed (%d)", ret);

	return ret;
}