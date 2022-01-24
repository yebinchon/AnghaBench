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
struct TYPE_2__ {int /*<<< orphan*/  completed; int /*<<< orphan*/  closure; int /*<<< orphan*/  type; } ;
struct iso_interrupt_mc_event {TYPE_1__ interrupt; int /*<<< orphan*/  event; } ;
struct fw_iso_context {int dummy; } ;
struct client {int /*<<< orphan*/  buffer; int /*<<< orphan*/  iso_closure; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FW_CDEV_EVENT_ISO_INTERRUPT_MULTICHANNEL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iso_interrupt_mc_event* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct client*,int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fw_iso_context *context,
			    dma_addr_t completed, void *data)
{
	struct client *client = data;
	struct iso_interrupt_mc_event *e;

	e = FUNC1(sizeof(*e), GFP_ATOMIC);
	if (e == NULL)
		return;

	e->interrupt.type      = FW_CDEV_EVENT_ISO_INTERRUPT_MULTICHANNEL;
	e->interrupt.closure   = client->iso_closure;
	e->interrupt.completed = FUNC0(&client->buffer,
						      completed);
	FUNC2(client, &e->event, &e->interrupt,
		    sizeof(e->interrupt), NULL, 0);
}