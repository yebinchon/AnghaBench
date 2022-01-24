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
struct tsys01_dev {int (* read_prom_word ) (int /*<<< orphan*/ ,scalar_t__,int*) ;int* prom; int /*<<< orphan*/  client; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ TSYS01_PROM_READ ; 
 int TSYS01_PROM_WORDS_NB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 struct tsys01_dev* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (char*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	int i, ret;
	struct tsys01_dev *dev_data = FUNC2(indio_dev);
	char buf[7 * TSYS01_PROM_WORDS_NB + 1];
	char *ptr = buf;

	for (i = 0; i < TSYS01_PROM_WORDS_NB; i++) {
		ret = dev_data->read_prom_word(dev_data->client,
					       TSYS01_PROM_READ + (i << 1),
					       &dev_data->prom[i]);
		if (ret)
			return ret;

		ret = FUNC3(ptr, "0x%04x ", dev_data->prom[i]);
		ptr += ret;
	}

	if (!FUNC5(dev_data->prom)) {
		FUNC0(&indio_dev->dev, "prom crc check error\n");
		return -ENODEV;
	}
	*ptr = 0;
	FUNC1(&indio_dev->dev, "PROM coefficients : %s\n", buf);

	return 0;
}