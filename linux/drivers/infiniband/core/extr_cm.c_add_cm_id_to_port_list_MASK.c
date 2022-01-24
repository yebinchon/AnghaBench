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
struct cm_port {int /*<<< orphan*/  cm_priv_altr_list; int /*<<< orphan*/  cm_priv_prim_list; } ;
struct cm_av {int dummy; } ;
struct cm_id_private {int /*<<< orphan*/  altr_list; struct cm_av alt_av; int /*<<< orphan*/  prim_list; struct cm_av av; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__ cm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct cm_id_private *cm_id_priv,
				  struct cm_av *av,
				  struct cm_port *port)
{
	unsigned long flags;
	int ret = 0;

	FUNC1(&cm.lock, flags);

	if (&cm_id_priv->av == av)
		FUNC0(&cm_id_priv->prim_list, &port->cm_priv_prim_list);
	else if (&cm_id_priv->alt_av == av)
		FUNC0(&cm_id_priv->altr_list, &port->cm_priv_altr_list);
	else
		ret = -EINVAL;

	FUNC2(&cm.lock, flags);
	return ret;
}