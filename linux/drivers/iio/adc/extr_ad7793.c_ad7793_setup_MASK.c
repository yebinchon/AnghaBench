#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct iio_dev {int dummy; } ;
struct TYPE_14__ {TYPE_4__* spi; } ;
struct ad7793_state {int conf; int** scale_avail; TYPE_5__ sd; TYPE_3__* chip_info; int /*<<< orphan*/  mode; } ;
struct ad7793_platform_data {int exitation_current; int current_source_direction; scalar_t__ unipolar; scalar_t__ burnout_current; scalar_t__ boost_enable; scalar_t__ buffered; int /*<<< orphan*/  bias_voltage; int /*<<< orphan*/  refsel; int /*<<< orphan*/  clock_src; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;
struct TYPE_12__ {int flags; TYPE_2__* channels; int /*<<< orphan*/  id; } ;
struct TYPE_10__ {int realbits; } ;
struct TYPE_11__ {TYPE_1__ scan_type; } ;

/* Variables and functions */
 int AD7793_CONF_BOOST ; 
 int AD7793_CONF_BO_EN ; 
 int AD7793_CONF_BUF ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int AD7793_CONF_UNIPOLAR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int AD7793_FLAG_HAS_BUFFER ; 
 int AD7793_FLAG_HAS_CLKSEL ; 
 int AD7793_FLAG_HAS_GAIN ; 
 int AD7793_FLAG_HAS_REFSEL ; 
 int AD7793_FLAG_HAS_VBIAS ; 
 int AD7793_HAS_EXITATION_CURRENT ; 
 int /*<<< orphan*/  AD7793_ID_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  AD7793_REG_ID ; 
 int /*<<< orphan*/  AD7793_REG_IO ; 
 int /*<<< orphan*/  AD_SD_MODE_IDLE ; 
 int FUNC5 (int**) ; 
 int FUNC6 (struct ad7793_state*) ; 
 int FUNC7 (struct ad7793_state*,struct ad7793_platform_data const*) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_5__*,int) ; 
 int FUNC12 (TYPE_5__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int FUNC14 (unsigned long long,int) ; 
 struct ad7793_state* FUNC15 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 

__attribute__((used)) static int FUNC17(struct iio_dev *indio_dev,
	const struct ad7793_platform_data *pdata,
	unsigned int vref_mv)
{
	struct ad7793_state *st = FUNC15(indio_dev);
	int i, ret;
	unsigned long long scale_uv;
	u32 id;

	ret = FUNC7(st, pdata);
	if (ret)
		return ret;

	/* reset the serial interface */
	ret = FUNC11(&st->sd, 32);
	if (ret < 0)
		goto out;
	FUNC16(500, 2000); /* Wait for at least 500us */

	/* write/read test for device presence */
	ret = FUNC10(&st->sd, AD7793_REG_ID, 1, &id);
	if (ret)
		goto out;

	id &= AD7793_ID_MASK;

	if (id != st->chip_info->id) {
		FUNC13(&st->sd.spi->dev, "device ID query failed\n");
		goto out;
	}

	st->mode = FUNC4(1);
	st->conf = 0;

	if (st->chip_info->flags & AD7793_FLAG_HAS_CLKSEL)
		st->mode |= FUNC3(pdata->clock_src);
	if (st->chip_info->flags & AD7793_FLAG_HAS_REFSEL)
		st->conf |= FUNC1(pdata->refsel);
	if (st->chip_info->flags & AD7793_FLAG_HAS_VBIAS)
		st->conf |= FUNC2(pdata->bias_voltage);
	if (pdata->buffered || !(st->chip_info->flags & AD7793_FLAG_HAS_BUFFER))
		st->conf |= AD7793_CONF_BUF;
	if (pdata->boost_enable &&
		(st->chip_info->flags & AD7793_FLAG_HAS_VBIAS))
		st->conf |= AD7793_CONF_BOOST;
	if (pdata->burnout_current)
		st->conf |= AD7793_CONF_BO_EN;
	if (pdata->unipolar)
		st->conf |= AD7793_CONF_UNIPOLAR;

	if (!(st->chip_info->flags & AD7793_FLAG_HAS_GAIN))
		st->conf |= FUNC0(7);

	ret = FUNC9(&st->sd, AD_SD_MODE_IDLE);
	if (ret)
		goto out;

	ret = FUNC8(&st->sd, 0);
	if (ret)
		goto out;

	if (st->chip_info->flags & AD7793_HAS_EXITATION_CURRENT) {
		ret = FUNC12(&st->sd, AD7793_REG_IO, 1,
				pdata->exitation_current |
				(pdata->current_source_direction << 2));
		if (ret)
			goto out;
	}

	ret = FUNC6(st);
	if (ret)
		goto out;

	/* Populate available ADC input ranges */
	for (i = 0; i < FUNC5(st->scale_avail); i++) {
		scale_uv = ((u64)vref_mv * 100000000)
			>> (st->chip_info->channels[0].scan_type.realbits -
			(!!(st->conf & AD7793_CONF_UNIPOLAR) ? 0 : 1));
		scale_uv >>= i;

		st->scale_avail[i][1] = FUNC14(scale_uv, 100000000) * 10;
		st->scale_avail[i][0] = scale_uv;
	}

	return 0;
out:
	FUNC13(&st->sd.spi->dev, "setup failed\n");
	return ret;
}