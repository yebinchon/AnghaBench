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
struct atmel_tdes_dev {int /*<<< orphan*/  iclk; int /*<<< orphan*/  hw_version; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct atmel_tdes_dev *dd)
{
	FUNC1(dd);

	dd->hw_version = FUNC0(dd);

	FUNC3(dd->dev,
			"version: 0x%x\n", dd->hw_version);

	FUNC2(dd->iclk);
}