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
struct mtk_cec {void (* hpd_event ) (int,struct device*) ;int /*<<< orphan*/  lock; struct device* hdmi_dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mtk_cec* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct device *dev,
			   void (*hpd_event)(bool hpd, struct device *dev),
			   struct device *hdmi_dev)
{
	struct mtk_cec *cec = FUNC0(dev);
	unsigned long flags;

	FUNC1(&cec->lock, flags);
	cec->hdmi_dev = hdmi_dev;
	cec->hpd_event = hpd_event;
	FUNC2(&cec->lock, flags);
}