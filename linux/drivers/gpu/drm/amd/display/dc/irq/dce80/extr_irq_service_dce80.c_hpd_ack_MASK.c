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
typedef  scalar_t__ uint32_t ;
struct irq_source_info {scalar_t__ enable_reg; scalar_t__ status_reg; } ;
struct irq_service {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_HPD1_INT_CONTROL ; 
 int /*<<< orphan*/  DC_HPD1_INT_POLARITY ; 
 int /*<<< orphan*/  DC_HPD1_INT_STATUS ; 
 int /*<<< orphan*/  DC_HPD1_SENSE_DELAYED ; 
 int /*<<< orphan*/  FUNC0 (struct irq_service*,struct irq_source_info const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(
	struct irq_service *irq_service,
	const struct irq_source_info *info)
{
	uint32_t addr = info->status_reg;
	uint32_t value = FUNC1(irq_service->ctx, addr);
	uint32_t current_status =
		FUNC3(
			value,
			DC_HPD1_INT_STATUS,
			DC_HPD1_SENSE_DELAYED);

	FUNC0(irq_service, info);

	value = FUNC1(irq_service->ctx, info->enable_reg);

	FUNC4(
		value,
		current_status ? 0 : 1,
		DC_HPD1_INT_CONTROL,
		DC_HPD1_INT_POLARITY);

	FUNC2(irq_service->ctx, info->enable_reg, value);

	return true;
}