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
typedef  int /*<<< orphan*/  u32 ;
struct applespi_data {int read_active; int /*<<< orphan*/  cmd_msg_lock; TYPE_1__* spi; int /*<<< orphan*/  rd_m; int /*<<< orphan*/  suspended; } ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_INTERRUPT_HANDLED ; 
 int /*<<< orphan*/  ET_RD_IRQ ; 
 int /*<<< orphan*/  PT_READ ; 
 int FUNC0 (struct applespi_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  applespi_async_read_complete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(acpi_handle gpe_device, u32 gpe, void *context)
{
	struct applespi_data *applespi = context;
	int sts;
	unsigned long flags;

	FUNC4(ET_RD_IRQ, PT_READ);

	FUNC2(&applespi->cmd_msg_lock, flags);

	if (!applespi->suspended) {
		sts = FUNC0(applespi, &applespi->rd_m,
				     applespi_async_read_complete);
		if (sts)
			FUNC1(&applespi->spi->dev,
				 "Error queueing async read to device: %d\n",
				 sts);
		else
			applespi->read_active = true;
	}

	FUNC3(&applespi->cmd_msg_lock, flags);

	return ACPI_INTERRUPT_HANDLED;
}