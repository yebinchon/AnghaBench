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
struct TYPE_2__ {int /*<<< orphan*/ * domain; } ;
struct dpu_mdss {TYPE_1__ irq_controller; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct dpu_mdss *dpu_mdss)
{
	if (dpu_mdss->irq_controller.domain) {
		FUNC0(dpu_mdss->irq_controller.domain);
		dpu_mdss->irq_controller.domain = NULL;
	}
}