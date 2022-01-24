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
struct omap_sham_dev {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLAGS_FINAL ; 
 int /*<<< orphan*/  SHA_REG_CTRL ; 
 int /*<<< orphan*/  SHA_REG_CTRL_LENGTH ; 
 int /*<<< orphan*/  SHA_REG_CTRL_OUTPUT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct omap_sham_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_sham_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_sham_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct omap_sham_dev *dd = dev_id;

	if (FUNC4(FUNC3(FLAGS_FINAL, &dd->flags)))
		/* final -> allow device to go to power-saving mode */
		FUNC2(dd, SHA_REG_CTRL, 0, SHA_REG_CTRL_LENGTH);

	FUNC2(dd, SHA_REG_CTRL, SHA_REG_CTRL_OUTPUT_READY,
				 SHA_REG_CTRL_OUTPUT_READY);
	FUNC1(dd, SHA_REG_CTRL);

	return FUNC0(dd);
}