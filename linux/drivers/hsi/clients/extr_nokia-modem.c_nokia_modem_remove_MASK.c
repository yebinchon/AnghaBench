#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nokia_modem_device {int /*<<< orphan*/  nokia_modem_rst_ind_tasklet; int /*<<< orphan*/  nokia_modem_rst_ind_irq; TYPE_1__* ssi_protocol; TYPE_2__* cmt_speech; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct nokia_modem_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct nokia_modem_device *modem = FUNC0(dev);

	if (!modem)
		return 0;

	if (modem->cmt_speech) {
		FUNC3(&modem->cmt_speech->device, NULL);
		modem->cmt_speech = NULL;
	}

	if (modem->ssi_protocol) {
		FUNC3(&modem->ssi_protocol->device, NULL);
		modem->ssi_protocol = NULL;
	}

	FUNC4(dev);
	FUNC1(dev, NULL);
	FUNC2(modem->nokia_modem_rst_ind_irq);
	FUNC5(&modem->nokia_modem_rst_ind_tasklet);

	return 0;
}