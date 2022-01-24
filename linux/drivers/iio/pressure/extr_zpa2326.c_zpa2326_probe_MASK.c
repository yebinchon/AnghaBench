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
struct zpa2326_private {struct regmap* regmap; int /*<<< orphan*/  frequency; void* vdd; void* vref; } ;
struct regmap {int dummy; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  ZPA2326_DEVICE_ID_REG ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct iio_dev*) ; 
 int FUNC4 (struct device*,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct zpa2326_private* FUNC7 (struct iio_dev*) ; 
 int FUNC8 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  zpa2326_buffer_setup_ops ; 
 int FUNC9 (struct iio_dev*,int) ; 
 struct iio_dev* FUNC10 (struct device*,char const*,struct regmap*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (struct device*,struct iio_dev*,struct zpa2326_private*,int) ; 
 int FUNC14 (struct device*,struct iio_dev*,struct zpa2326_private*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct iio_dev*,struct zpa2326_private*) ; 
 int FUNC17 (struct iio_dev*,struct zpa2326_private*) ; 
 int FUNC18 (struct iio_dev*) ; 
 int /*<<< orphan*/  zpa2326_trigger_handler ; 

int FUNC19(struct device *parent,
		  const char    *name,
		  int            irq,
		  unsigned int   hwid,
		  struct regmap *regmap)
{
	struct iio_dev         *indio_dev;
	struct zpa2326_private *priv;
	int                     err;
	unsigned int            id;

	indio_dev = FUNC10(parent, name, regmap);
	if (!indio_dev)
		return -ENOMEM;

	priv = FUNC7(indio_dev);

	priv->vref = FUNC5(parent, "vref");
	if (FUNC0(priv->vref))
		return FUNC1(priv->vref);

	priv->vdd = FUNC5(parent, "vdd");
	if (FUNC0(priv->vdd))
		return FUNC1(priv->vdd);

	/* Set default hardware sampling frequency to highest rate supported. */
	priv->frequency = FUNC12();

	/*
	 * Plug device's underlying bus abstraction : this MUST be set before
	 * registering interrupt handlers since an interrupt might happen if
	 * power up sequence is not properly applied.
	 */
	priv->regmap = regmap;

	err = FUNC4(parent, indio_dev, NULL,
					      zpa2326_trigger_handler,
					      &zpa2326_buffer_setup_ops);
	if (err)
		return err;

	err = FUNC14(parent, indio_dev, priv, irq);
	if (err)
		return err;

	err = FUNC13(parent, indio_dev, priv, irq);
	if (err)
		return err;

	/* Power up to check device ID and perform initial hardware setup. */
	err = FUNC17(indio_dev, priv);
	if (err)
		return err;

	/* Read id register to check we are talking to the right slave. */
	err = FUNC8(regmap, ZPA2326_DEVICE_ID_REG, &id);
	if (err)
		goto sleep;

	if (id != hwid) {
		FUNC2(parent, "found device with unexpected id %02x", id);
		err = -ENODEV;
		goto sleep;
	}

	err = FUNC9(indio_dev, irq);
	if (err)
		goto sleep;

	/* Setup done : go sleeping. Device will be awaken upon user request. */
	err = FUNC18(indio_dev);
	if (err)
		goto poweroff;

	FUNC3(parent, indio_dev);

	FUNC15(parent);

	err = FUNC6(indio_dev);
	if (err) {
		FUNC11(parent);
		goto poweroff;
	}

	return 0;

sleep:
	/* Put to sleep just in case power regulators are "dummy" ones. */
	FUNC18(indio_dev);
poweroff:
	FUNC16(indio_dev, priv);

	return err;
}