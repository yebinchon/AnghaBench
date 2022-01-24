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
struct sys_t_policy_node {int dummy; } ;
struct sys_t_output {int /*<<< orphan*/  node; } ;
struct stm_output {struct sys_t_output* pdrv_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sys_t_output* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sys_t_policy_node*,int) ; 

__attribute__((used)) static int FUNC2(void *priv, struct stm_output *output)
{
	struct sys_t_policy_node *pn = priv;
	struct sys_t_output *opriv;

	opriv = FUNC0(sizeof(*opriv), GFP_ATOMIC);
	if (!opriv)
		return -ENOMEM;

	FUNC1(&opriv->node, pn, sizeof(opriv->node));
	output->pdrv_private = opriv;

	return 0;
}