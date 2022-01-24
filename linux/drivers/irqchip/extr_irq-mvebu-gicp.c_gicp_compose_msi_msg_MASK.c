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
struct mvebu_gicp {TYPE_1__* res; } ;
struct msi_msg {void* address_hi; void* address_lo; int /*<<< orphan*/  data; } ;
struct irq_data {int /*<<< orphan*/  hwirq; struct mvebu_gicp* chip_data; } ;
typedef  scalar_t__ phys_addr_t ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 scalar_t__ GICP_CLRSPI_NSR_OFFSET ; 
 scalar_t__ GICP_SETSPI_NSR_OFFSET ; 
 void* FUNC0 (scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data, struct msi_msg *msg)
{
	struct mvebu_gicp *gicp = data->chip_data;
	phys_addr_t setspi = gicp->res->start + GICP_SETSPI_NSR_OFFSET;
	phys_addr_t clrspi = gicp->res->start + GICP_CLRSPI_NSR_OFFSET;

	msg[0].data = data->hwirq;
	msg[0].address_lo = FUNC0(setspi);
	msg[0].address_hi = FUNC1(setspi);
	msg[1].data = data->hwirq;
	msg[1].address_lo = FUNC0(clrspi);
	msg[1].address_hi = FUNC1(clrspi);
}