#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct applespi_data {TYPE_1__* spi; int /*<<< orphan*/  sien; int /*<<< orphan*/  sist; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct applespi_data *applespi)
{
	acpi_status acpi_sts;
	unsigned long long spi_status;

	/* check if SPI is already enabled, so we can skip the delay below */
	acpi_sts = FUNC2(applespi->sist, NULL, NULL,
					 &spi_status);
	if (FUNC1(acpi_sts) && spi_status)
		return 0;

	/* SIEN(1) will enable SPI communication */
	acpi_sts = FUNC3(applespi->sien, NULL, 1);
	if (FUNC0(acpi_sts)) {
		FUNC5(&applespi->spi->dev, "SIEN failed: %s\n",
			FUNC4(acpi_sts));
		return -ENODEV;
	}

	/*
	 * Allow the SPI interface to come up before returning. Without this
	 * delay, the SPI commands to enable multitouch mode may not reach
	 * the trackpad controller, causing pointer movement to break upon
	 * resume from sleep.
	 */
	FUNC6(50);

	return 0;
}