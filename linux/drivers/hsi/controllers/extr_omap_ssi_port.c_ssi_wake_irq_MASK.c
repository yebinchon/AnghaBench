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
struct omap_ssi_port {int wake_irq; int /*<<< orphan*/  wake_gpio; } ;
struct hsi_port {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct hsi_port*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct omap_ssi_port* FUNC4 (struct hsi_port*) ; 
 int /*<<< orphan*/  ssi_wake_thread ; 

__attribute__((used)) static int FUNC5(struct hsi_port *port, struct platform_device *pd)
{
	struct omap_ssi_port *omap_port = FUNC4(port);
	int cawake_irq;
	int err;

	if (!omap_port->wake_gpio) {
		omap_port->wake_irq = -1;
		return 0;
	}

	cawake_irq = FUNC3(omap_port->wake_gpio);
	omap_port->wake_irq = cawake_irq;

	err = FUNC1(&port->device, cawake_irq, NULL,
		ssi_wake_thread,
		IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
		"SSI cawake", port);
	if (err < 0)
		FUNC0(&port->device, "Request Wake in IRQ %d failed %d\n",
						cawake_irq, err);
	err = FUNC2(cawake_irq);
	if (err < 0)
		FUNC0(&port->device, "Enable wake on the wakeline in irq %d failed %d\n",
			cawake_irq, err);

	return err;
}