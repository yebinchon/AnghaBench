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
struct ttl_module {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  portc; int /*<<< orphan*/  portb; int /*<<< orphan*/  porta; int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int CONF_PAE ; 
 int CONF_PBE ; 
 int CONF_PCE ; 
 int /*<<< orphan*/  MASTER_CONF_CTL ; 
 int /*<<< orphan*/  PORTA_DIRECTION ; 
 int /*<<< orphan*/  PORTA_IOCTL ; 
 int /*<<< orphan*/  PORTB_DIRECTION ; 
 int /*<<< orphan*/  PORTB_IOCTL ; 
 int /*<<< orphan*/  PORTC_DIRECTION ; 
 int /*<<< orphan*/  PORTC_IOCTL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ttl_module*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ttl_module *mod)
{
	/* reset the device to a known state */
	FUNC0(0x0000, &mod->regs->control);
	FUNC0(0x0001, &mod->regs->control);
	FUNC0(0x0000, &mod->regs->control);

	/* put all ports in open-drain mode */
	FUNC1(mod, PORTA_IOCTL, 0x00ff);
	FUNC1(mod, PORTB_IOCTL, 0x00ff);
	FUNC1(mod, PORTC_IOCTL, 0x000f);

	/* set all ports as outputs */
	FUNC1(mod, PORTA_DIRECTION, 0x0000);
	FUNC1(mod, PORTB_DIRECTION, 0x0000);
	FUNC1(mod, PORTC_DIRECTION, 0x0000);

	/* set all ports to drive zeroes */
	FUNC0(0x0000, &mod->regs->porta);
	FUNC0(0x0000, &mod->regs->portb);
	FUNC0(0x0000, &mod->regs->portc);

	/* enable all ports */
	FUNC1(mod, MASTER_CONF_CTL, CONF_PAE | CONF_PBE | CONF_PCE);
}