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
struct net_device {int dummy; } ;
struct dvb_net_priv {int /*<<< orphan*/  set_multicast_list_wq; } ;

/* Variables and functions */
 struct dvb_net_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (struct net_device *dev)
{
	struct dvb_net_priv *priv = FUNC0(dev);
	FUNC1(&priv->set_multicast_list_wq);
}