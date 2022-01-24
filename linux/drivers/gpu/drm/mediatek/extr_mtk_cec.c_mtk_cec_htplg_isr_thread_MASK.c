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
struct mtk_cec {int hpd; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 struct mtk_cec* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_cec*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_cec*,int) ; 
 int FUNC4 (struct device*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *arg)
{
	struct device *dev = arg;
	struct mtk_cec *cec = FUNC1(dev);
	bool hpd;

	FUNC2(cec);
	hpd = FUNC4(dev);

	if (cec->hpd != hpd) {
		FUNC0(dev, "hotplug event! cur hpd = %d, hpd = %d\n",
			cec->hpd, hpd);
		cec->hpd = hpd;
		FUNC3(cec, hpd);
	}
	return IRQ_HANDLED;
}