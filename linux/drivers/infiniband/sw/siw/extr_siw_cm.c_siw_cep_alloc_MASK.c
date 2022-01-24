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
struct siw_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  cep_list; } ;
struct siw_cep {int enhanced_rdma_conn_est; int /*<<< orphan*/  devq; struct siw_device* sdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  waitq; int /*<<< orphan*/  state; int /*<<< orphan*/  ref; int /*<<< orphan*/  work_freelist; int /*<<< orphan*/  listenq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIW_EPSTATE_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct siw_cep* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct siw_cep*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct siw_cep *FUNC9(struct siw_device *sdev)
{
	struct siw_cep *cep = FUNC3(sizeof(*cep), GFP_KERNEL);
	unsigned long flags;

	if (!cep)
		return NULL;

	FUNC0(&cep->listenq);
	FUNC0(&cep->devq);
	FUNC0(&cep->work_freelist);

	FUNC2(&cep->ref);
	cep->state = SIW_EPSTATE_IDLE;
	FUNC1(&cep->waitq);
	FUNC6(&cep->lock);
	cep->sdev = sdev;
	cep->enhanced_rdma_conn_est = false;

	FUNC7(&sdev->lock, flags);
	FUNC4(&cep->devq, &sdev->cep_list);
	FUNC8(&sdev->lock, flags);

	FUNC5(cep, "new endpoint\n");
	return cep;
}