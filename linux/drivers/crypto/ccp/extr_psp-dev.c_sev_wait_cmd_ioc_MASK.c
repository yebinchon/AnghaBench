#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct psp_device {TYPE_1__* vdata; scalar_t__ io_regs; int /*<<< orphan*/  sev_int_rcvd; int /*<<< orphan*/  sev_int_queue; } ;
struct TYPE_2__ {scalar_t__ cmdresp_reg; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned int HZ ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct psp_device *psp,
			    unsigned int *reg, unsigned int timeout)
{
	int ret;

	ret = FUNC1(psp->sev_int_queue,
			psp->sev_int_rcvd, timeout * HZ);
	if (!ret)
		return -ETIMEDOUT;

	*reg = FUNC0(psp->io_regs + psp->vdata->cmdresp_reg);

	return 0;
}