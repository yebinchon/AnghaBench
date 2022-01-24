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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct applespi_data {int /*<<< orphan*/  debugfs_root; int /*<<< orphan*/  gpe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct applespi_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct applespi_data*) ; 
 int /*<<< orphan*/  applespi_notify ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct applespi_data* FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct applespi_data *applespi = FUNC6(spi);

	FUNC3(applespi);

	FUNC0(NULL, applespi->gpe);
	FUNC1(NULL, applespi->gpe, applespi_notify);
	FUNC5(&spi->dev);

	FUNC2(applespi);

	FUNC4(applespi->debugfs_root);

	return 0;
}