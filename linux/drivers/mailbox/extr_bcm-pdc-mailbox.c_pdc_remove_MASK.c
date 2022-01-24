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
struct platform_device {int dummy; } ;
struct pdc_state {int /*<<< orphan*/  ring_pool; int /*<<< orphan*/  rx_buf_pool; int /*<<< orphan*/  rx_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pdc_state*) ; 
 struct pdc_state* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct pdc_state *pdcs = FUNC3(pdev);

	FUNC1();

	FUNC4(&pdcs->rx_tasklet);

	FUNC2(pdcs);

	FUNC0(pdcs->rx_buf_pool);
	FUNC0(pdcs->ring_pool);
	return 0;
}