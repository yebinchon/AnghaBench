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
struct uverbs_attr_bundle {int dummy; } ;
struct devx_umem_reg_cmd {int inlen; int /*<<< orphan*/  in; } ;
struct devx_umem {int ncont; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_umem_in ; 
 int /*<<< orphan*/  mtt ; 
 int /*<<< orphan*/  FUNC2 (struct uverbs_attr_bundle*,int) ; 

__attribute__((used)) static int FUNC3(struct uverbs_attr_bundle *attrs,
				   struct devx_umem *obj,
				   struct devx_umem_reg_cmd *cmd)
{
	cmd->inlen = FUNC0(create_umem_in) +
		    (FUNC0(mtt) * obj->ncont);
	cmd->in = FUNC2(attrs, cmd->inlen);
	return FUNC1(cmd->in);
}