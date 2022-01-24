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
struct omap_sham_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_sham_dev*) ; 
 int /*<<< orphan*/  SHA_REG_MASK_IT_EN ; 
 int /*<<< orphan*/  FUNC1 (struct omap_sham_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_sham_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct omap_sham_dev *dd = dev_id;

	FUNC2(dd, FUNC0(dd), 0, SHA_REG_MASK_IT_EN);

	return FUNC1(dd);
}