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
struct siw_cm_work {int /*<<< orphan*/  list; struct siw_cep* cep; } ;
struct siw_cep {int /*<<< orphan*/  work_freelist; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct siw_cm_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct siw_cep*) ; 

__attribute__((used)) static int FUNC5(struct siw_cep *cep, int num)
{
	struct siw_cm_work *work;

	while (num--) {
		work = FUNC1(sizeof(*work), GFP_KERNEL);
		if (!work) {
			if (!(FUNC3(&cep->work_freelist)))
				FUNC4(cep);
			return -ENOMEM;
		}
		work->cep = cep;
		FUNC0(&work->list);
		FUNC2(&work->list, &cep->work_freelist);
	}
	return 0;
}