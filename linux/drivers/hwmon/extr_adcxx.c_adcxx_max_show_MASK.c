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
typedef  int u32 ;
struct spi_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adcxx {int reference; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERESTARTSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct adcxx* FUNC2 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct spi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			      struct device_attribute *devattr, char *buf)
{
	struct spi_device *spi = FUNC4(dev);
	struct adcxx *adc = FUNC2(spi);
	u32 reference;

	if (FUNC0(&adc->lock))
		return -ERESTARTSYS;

	reference = adc->reference;

	FUNC1(&adc->lock);

	return FUNC3(buf, "%d\n", reference);
}