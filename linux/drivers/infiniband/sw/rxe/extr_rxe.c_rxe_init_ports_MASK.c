#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pkey_tbl_len; int /*<<< orphan*/  gid_tbl_len; } ;
struct rxe_port {int* pkey_tbl; int /*<<< orphan*/  port_lock; int /*<<< orphan*/  port_guid; TYPE_2__ attr; } ;
struct rxe_dev {TYPE_1__* ndev; struct rxe_port port; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct rxe_dev *rxe)
{
	struct rxe_port *port = &rxe->port;

	FUNC2(port);

	if (!port->attr.pkey_tbl_len || !port->attr.gid_tbl_len)
		return -EINVAL;

	port->pkey_tbl = FUNC1(port->attr.pkey_tbl_len,
			sizeof(*port->pkey_tbl), GFP_KERNEL);

	if (!port->pkey_tbl)
		return -ENOMEM;

	port->pkey_tbl[0] = 0xffff;
	FUNC0((unsigned char *)&port->port_guid,
			    rxe->ndev->dev_addr);

	FUNC3(&port->port_lock);

	return 0;
}