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
struct device {int dummy; } ;
struct cc_req_mgr_handle {scalar_t__ axi_completed; } ;
struct cc_drvdata {int irq; int comp_mask; struct cc_req_mgr_handle* request_mgr_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOST_ICR ; 
 int /*<<< orphan*/  HOST_IMR ; 
 int /*<<< orphan*/  HOST_IRR ; 
 scalar_t__ FUNC1 (struct cc_drvdata*) ; 
 int FUNC2 (struct cc_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_drvdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 struct device* FUNC6 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_drvdata*) ; 

__attribute__((used)) static void FUNC8(unsigned long devarg)
{
	struct cc_drvdata *drvdata = (struct cc_drvdata *)devarg;
	struct cc_req_mgr_handle *request_mgr_handle =
						drvdata->request_mgr_handle;
	struct device *dev = FUNC6(drvdata);
	u32 irq;

	FUNC5(dev, "Completion handler called!\n");
	irq = (drvdata->irq & drvdata->comp_mask);

	/* To avoid the interrupt from firing as we unmask it,
	 * we clear it now
	 */
	FUNC3(drvdata, FUNC0(HOST_ICR), irq);

	/* Avoid race with above clear: Test completion counter once more */

	request_mgr_handle->axi_completed += FUNC1(drvdata);

	FUNC5(dev, "AXI completion after updated: %d\n",
		request_mgr_handle->axi_completed);

	while (request_mgr_handle->axi_completed) {
		do {
			drvdata->irq |= FUNC2(drvdata, FUNC0(HOST_IRR));
			irq = (drvdata->irq & drvdata->comp_mask);
			FUNC7(drvdata);

			/* At this point (after proc_completions()),
			 * request_mgr_handle->axi_completed is 0.
			 */
			request_mgr_handle->axi_completed +=
						FUNC1(drvdata);
		} while (request_mgr_handle->axi_completed > 0);

		FUNC3(drvdata, FUNC0(HOST_ICR), irq);

		request_mgr_handle->axi_completed += FUNC1(drvdata);
	}

	/* after verifing that there is nothing to do,
	 * unmask AXI completion interrupt
	 */
	FUNC3(drvdata, FUNC0(HOST_IMR),
		   FUNC2(drvdata, FUNC0(HOST_IMR)) & ~drvdata->comp_mask);

	FUNC4(drvdata);
	FUNC5(dev, "Comp. handler done.\n");
}