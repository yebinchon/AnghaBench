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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct TYPE_3__ {size_t pkey_tbl_len; } ;
struct rxe_port {size_t* pkey_tbl; TYPE_1__ attr; } ;
struct rxe_dev {struct rxe_port port; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct ib_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 struct rxe_dev* FUNC1 (struct ib_device*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ib_device *device,
			  u8 port_num, u16 index, u16 *pkey)
{
	struct rxe_dev *rxe = FUNC1(device);
	struct rxe_port *port;

	port = &rxe->port;

	if (FUNC2(index >= port->attr.pkey_tbl_len)) {
		FUNC0(device->dev.parent, "invalid index = %d\n",
			 index);
		goto err1;
	}

	*pkey = port->pkey_tbl[index];
	return 0;

err1:
	return -EINVAL;
}