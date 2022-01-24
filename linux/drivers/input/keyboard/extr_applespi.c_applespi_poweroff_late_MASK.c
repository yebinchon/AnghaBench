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
struct spi_device {int dummy; } ;
struct device {int dummy; } ;
struct applespi_data {int /*<<< orphan*/  have_bl_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct applespi_data*,int /*<<< orphan*/ ) ; 
 struct applespi_data* FUNC1 (struct spi_device*) ; 
 struct spi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct spi_device *spi = FUNC2(dev);
	struct applespi_data *applespi = FUNC1(spi);

	FUNC0(applespi, applespi->have_bl_level);

	return 0;
}