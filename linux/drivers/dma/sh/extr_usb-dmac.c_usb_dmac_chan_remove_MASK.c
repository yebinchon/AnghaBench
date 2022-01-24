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
struct usb_dmac_chan {int /*<<< orphan*/  irq; } ;
struct usb_dmac {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_dmac_chan*) ; 

__attribute__((used)) static void FUNC2(struct usb_dmac *dmac,
				 struct usb_dmac_chan *uchan)
{
	FUNC1(uchan);
	FUNC0(dmac->dev, uchan->irq, uchan);
}