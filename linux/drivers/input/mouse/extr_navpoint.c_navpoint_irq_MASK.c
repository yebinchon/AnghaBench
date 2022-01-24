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
typedef  int u32 ;
struct ssp_device {int dummy; } ;
struct navpoint {int* data; int index; int /*<<< orphan*/  dev; struct ssp_device* ssp; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SSDR ; 
 int /*<<< orphan*/  SSSR ; 
 int SSSR_RNE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct navpoint*) ; 
 int FUNC3 (struct ssp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ssp_device*,int /*<<< orphan*/ ,int) ; 
 int sssr ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct navpoint *navpoint = dev_id;
	struct ssp_device *ssp = navpoint->ssp;
	irqreturn_t ret = IRQ_NONE;
	u32 status;

	status = FUNC3(ssp, SSSR);
	if (status & sssr) {
		FUNC1(navpoint->dev,
			 "unexpected interrupt: status=0x%08x\n", status);
		FUNC4(ssp, SSSR, (status & sssr));
		ret = IRQ_HANDLED;
	}

	while (status & SSSR_RNE) {
		u32 data;

		data = FUNC3(ssp, SSDR);
		navpoint->data[navpoint->index + 0] = (data >> 8);
		navpoint->data[navpoint->index + 1] = data;
		navpoint->index += 2;
		if (FUNC0(navpoint->data[0]) < navpoint->index) {
			FUNC2(navpoint);
			navpoint->index = 0;
		}
		status = FUNC3(ssp, SSSR);
		ret = IRQ_HANDLED;
	}

	return ret;
}