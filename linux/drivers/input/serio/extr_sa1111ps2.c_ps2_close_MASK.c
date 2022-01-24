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
struct serio {struct ps2if* port_data; } ;
struct ps2if {int /*<<< orphan*/  dev; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  tx_irq; scalar_t__ open; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ PS2CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ps2if*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct serio *io)
{
	struct ps2if *ps2if = io->port_data;

	FUNC3(0, ps2if->base + PS2CR);

	FUNC0(ps2if->rx_irq);

	ps2if->open = 0;

	FUNC1(ps2if->tx_irq, ps2if);
	FUNC1(ps2if->rx_irq, ps2if);

	FUNC2(ps2if->dev);
}