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
struct dsi_data {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  isr_tables; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct dsi_data *dsi)
{
	unsigned long flags;
	int vc;

	FUNC4(&dsi->irq_lock, flags);

	FUNC3(&dsi->isr_tables, 0, sizeof(dsi->isr_tables));

	FUNC0(dsi);
	for (vc = 0; vc < 4; ++vc)
		FUNC2(dsi, vc);
	FUNC1(dsi);

	FUNC5(&dsi->irq_lock, flags);
}