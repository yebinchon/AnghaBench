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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  tx_buf ;
struct spi_device {int dummy; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adcxx {int channels; int reference; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rx_buf ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct adcxx* FUNC4 (struct spi_device*) ; 
 int FUNC5 (struct spi_device*,int*,int) ; 
 int FUNC6 (struct spi_device*,int*,int,int*,int) ; 
 int FUNC7 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 
 struct spi_device* FUNC9 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			  struct device_attribute *devattr, char *buf)
{
	struct spi_device *spi = FUNC9(dev);
	struct sensor_device_attribute *attr = FUNC8(devattr);
	struct adcxx *adc = FUNC4(spi);
	u8 tx_buf[2];
	u8 rx_buf[2];
	int status;
	u32 value;

	if (FUNC2(&adc->lock))
		return -ERESTARTSYS;

	if (adc->channels == 1) {
		status = FUNC5(spi, rx_buf, sizeof(rx_buf));
	} else {
		tx_buf[0] = attr->index << 3; /* other bits are don't care */
		status = FUNC6(spi, tx_buf, sizeof(tx_buf),
						rx_buf, sizeof(rx_buf));
	}
	if (status < 0) {
		FUNC1(dev, "SPI synch. transfer failed with status %d\n",
				status);
		goto out;
	}

	value = (rx_buf[0] << 8) + rx_buf[1];
	FUNC0(dev, "raw value = 0x%x\n", value);

	value = value * adc->reference >> 12;
	status = FUNC7(buf, "%d\n", value);
out:
	FUNC3(&adc->lock);
	return status;
}