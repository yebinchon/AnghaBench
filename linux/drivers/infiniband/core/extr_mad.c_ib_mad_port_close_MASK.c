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
struct ib_mad_port_private {int /*<<< orphan*/ * qp_info; int /*<<< orphan*/  pd; int /*<<< orphan*/  cq; int /*<<< orphan*/  wq; int /*<<< orphan*/  port_list; } ;
struct ib_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 struct ib_mad_port_private* FUNC0 (struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_mad_port_list_lock ; 
 int /*<<< orphan*/  FUNC7 (struct ib_mad_port_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct ib_device *device, int port_num)
{
	struct ib_mad_port_private *port_priv;
	unsigned long flags;

	FUNC9(&ib_mad_port_list_lock, flags);
	port_priv = FUNC0(device, port_num);
	if (port_priv == NULL) {
		FUNC10(&ib_mad_port_list_lock, flags);
		FUNC4(&device->dev, "Port %d not found\n", port_num);
		return -ENODEV;
	}
	FUNC8(&port_priv->port_list);
	FUNC10(&ib_mad_port_list_lock, flags);

	FUNC3(port_priv->wq);
	FUNC2(&port_priv->qp_info[1]);
	FUNC2(&port_priv->qp_info[0]);
	FUNC6(port_priv->cq);
	FUNC5(port_priv->pd);
	FUNC1(&port_priv->qp_info[1]);
	FUNC1(&port_priv->qp_info[0]);
	/* XXX: Handle deallocation of MAD registration tables */

	FUNC7(port_priv);

	return 0;
}