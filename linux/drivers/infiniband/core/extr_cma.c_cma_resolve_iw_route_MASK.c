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
struct rdma_id_private {int dummy; } ;
struct cma_work {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cma_work*,struct rdma_id_private*) ; 
 int /*<<< orphan*/  cma_wq ; 
 struct cma_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rdma_id_private *id_priv)
{
	struct cma_work *work;

	work = FUNC1(sizeof *work, GFP_KERNEL);
	if (!work)
		return -ENOMEM;

	FUNC0(work, id_priv);
	FUNC2(cma_wq, &work->work);
	return 0;
}