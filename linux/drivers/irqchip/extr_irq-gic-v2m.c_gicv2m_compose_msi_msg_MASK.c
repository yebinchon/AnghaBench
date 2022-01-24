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
struct v2m_data {int flags; scalar_t__ spi_offset; } ;
struct msi_msg {scalar_t__ data; int /*<<< orphan*/  address_lo; int /*<<< orphan*/  address_hi; } ;
struct irq_data {scalar_t__ hwirq; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int GICV2M_GRAVITON_ADDRESS_ONLY ; 
 int GICV2M_NEEDS_SPI_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct v2m_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct msi_msg*) ; 
 struct v2m_data* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct irq_data *data, struct msi_msg *msg)
{
	struct v2m_data *v2m = FUNC2(data);
	phys_addr_t addr = FUNC0(v2m, data->hwirq);

	msg->address_hi = FUNC5(addr);
	msg->address_lo = FUNC4(addr);

	if (v2m->flags & GICV2M_GRAVITON_ADDRESS_ONLY)
		msg->data = 0;
	else
		msg->data = data->hwirq;
	if (v2m->flags & GICV2M_NEEDS_SPI_OFFSET)
		msg->data -= v2m->spi_offset;

	FUNC1(FUNC3(data), msg);
}