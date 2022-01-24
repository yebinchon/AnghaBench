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
struct mtk_cec {void (* hpd_event ) (int,struct device*) ;struct device* hdmi_dev; int /*<<< orphan*/  lock; } ;
typedef  struct device device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct mtk_cec *cec, bool hpd)
{
	void (*hpd_event)(bool hpd, struct device *dev);
	struct device *hdmi_dev;
	unsigned long flags;

	FUNC0(&cec->lock, flags);
	hpd_event = cec->hpd_event;
	hdmi_dev = cec->hdmi_dev;
	FUNC1(&cec->lock, flags);

	if (hpd_event)
		hpd_event(hpd, hdmi_dev);
}