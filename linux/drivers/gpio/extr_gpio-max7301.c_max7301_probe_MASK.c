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
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; } ;
struct max7301 {int /*<<< orphan*/ * dev; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct max7301*) ; 
 struct max7301* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max7301_spi_read ; 
 int /*<<< orphan*/  max7301_spi_write ; 
 int FUNC2 (struct spi_device*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct max7301 *ts;
	int ret;

	/* bits_per_word cannot be configured in platform data */
	spi->bits_per_word = 16;
	ret = FUNC2(spi);
	if (ret < 0)
		return ret;

	ts = FUNC1(&spi->dev, sizeof(struct max7301), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	ts->read = max7301_spi_read;
	ts->write = max7301_spi_write;
	ts->dev = &spi->dev;

	ret = FUNC0(ts);
	return ret;
}