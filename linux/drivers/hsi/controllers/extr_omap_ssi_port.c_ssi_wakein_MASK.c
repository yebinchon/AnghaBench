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
struct omap_ssi_port {int /*<<< orphan*/  wake_gpio; } ;
struct hsi_port {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap_ssi_port* FUNC1 (struct hsi_port*) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct hsi_port *port)
{
	struct omap_ssi_port *omap_port = FUNC1(port);
	return FUNC0(omap_port->wake_gpio);
}