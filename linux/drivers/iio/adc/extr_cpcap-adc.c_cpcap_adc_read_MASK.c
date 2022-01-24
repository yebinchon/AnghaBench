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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; int /*<<< orphan*/  channel; } ;
struct cpcap_adc_request {int result; } ;
struct cpcap_adc {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  vendor; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCAP_ADC_AD3 ; 
 int /*<<< orphan*/  CPCAP_VENDOR_ST ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_PROCESSED 129 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int FUNC0 (struct cpcap_adc_request*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cpcap_adc*,struct cpcap_adc_request*) ; 
 int FUNC2 (struct cpcap_adc*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct cpcap_adc*,struct cpcap_adc_request*) ; 
 int FUNC4 (struct cpcap_adc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct cpcap_adc* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC10(struct iio_dev *indio_dev,
			  struct iio_chan_spec const *chan,
			  int *val, int *val2, long mask)
{
	struct cpcap_adc *ddata = FUNC6(indio_dev);
	struct cpcap_adc_request req;
	int error;

	error = FUNC0(&req, chan->channel);
	if (error)
		return error;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC7(&ddata->lock);
		error = FUNC3(ddata, &req);
		if (error)
			goto err_unlock;
		error = FUNC9(ddata->reg, chan->address, val);
		if (error)
			goto err_unlock;
		error = FUNC4(ddata);
		if (error)
			goto err_unlock;
		FUNC8(&ddata->lock);
		break;
	case IIO_CHAN_INFO_PROCESSED:
		FUNC7(&ddata->lock);
		error = FUNC3(ddata, &req);
		if (error)
			goto err_unlock;
		if ((ddata->vendor == CPCAP_VENDOR_ST) &&
		    (chan->channel == CPCAP_ADC_AD3)) {
			error = FUNC2(ddata,
							   chan->address,
							   &req.result);
			if (error)
				goto err_unlock;
		} else {
			error = FUNC1(ddata, &req);
			if (error)
				goto err_unlock;
		}
		error = FUNC4(ddata);
		if (error)
			goto err_unlock;
		FUNC8(&ddata->lock);
		*val = req.result;
		break;
	default:
		return -EINVAL;
	}

	return IIO_VAL_INT;

err_unlock:
	FUNC8(&ddata->lock);
	FUNC5(ddata->dev, "error reading ADC: %i\n", error);

	return error;
}