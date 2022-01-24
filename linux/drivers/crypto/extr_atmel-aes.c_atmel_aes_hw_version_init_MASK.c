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
struct atmel_aes_dev {int /*<<< orphan*/  iclk; int /*<<< orphan*/  hw_version; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atmel_aes_dev*) ; 
 int FUNC1 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct atmel_aes_dev *dd)
{
	int err;

	err = FUNC1(dd);
	if (err)
		return err;

	dd->hw_version = FUNC0(dd);

	FUNC3(dd->dev, "version: 0x%x\n", dd->hw_version);

	FUNC2(dd->iclk);
	return 0;
}