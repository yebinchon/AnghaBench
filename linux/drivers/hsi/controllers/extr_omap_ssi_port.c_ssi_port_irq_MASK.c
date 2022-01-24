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
struct omap_ssi_port {int irq; } ;
struct hsi_port {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct hsi_port*) ; 
 struct omap_ssi_port* FUNC2 (struct hsi_port*) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssi_pio_thread ; 

__attribute__((used)) static int FUNC4(struct hsi_port *port, struct platform_device *pd)
{
	struct omap_ssi_port *omap_port = FUNC2(port);
	int err;

	err = FUNC3(pd, 0);
	if (err < 0)
		return err;
	omap_port->irq = err;
	err = FUNC1(&port->device, omap_port->irq, NULL,
				ssi_pio_thread, IRQF_ONESHOT, "SSI PORT", port);
	if (err < 0)
		FUNC0(&port->device, "Request IRQ %d failed (%d)\n",
							omap_port->irq, err);
	return err;
}