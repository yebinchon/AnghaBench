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
struct hsi_port {int /*<<< orphan*/  n_head; } ;
struct hsi_client {int /*<<< orphan*/ * ehandler; int /*<<< orphan*/  nb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct hsi_port* FUNC2 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct hsi_client*) ; 

int FUNC4(struct hsi_client *cl)
{
	struct hsi_port *port = FUNC2(cl);
	int err;

	FUNC0(!FUNC3(cl));

	err = FUNC1(&port->n_head, &cl->nb);
	if (!err)
		cl->ehandler = NULL;

	return err;
}