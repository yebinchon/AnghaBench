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
typedef  int /*<<< orphan*/  u8 ;
struct siox_device {int /*<<< orphan*/  dev; } ;
struct gpio_siox_ddata {int /*<<< orphan*/  lock; int /*<<< orphan*/ * setdata; } ;

/* Variables and functions */
 struct gpio_siox_ddata* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct siox_device *sdevice, u8 status, u8 buf[])
{
	struct gpio_siox_ddata *ddata = FUNC0(&sdevice->dev);

	FUNC1(&ddata->lock);
	buf[0] = ddata->setdata[0];
	FUNC2(&ddata->lock);

	return 0;
}