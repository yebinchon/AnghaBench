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
struct siw_qp {int /*<<< orphan*/  ref; } ;
struct siw_device {int /*<<< orphan*/  qp_xa; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct siw_qp* FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline struct siw_qp *FUNC5(struct siw_device *sdev, int id)
{
	struct siw_qp *qp;

	FUNC2();
	qp = FUNC4(&sdev->qp_xa, id);
	if (FUNC1(qp && FUNC0(&qp->ref))) {
		FUNC3();
		return qp;
	}
	FUNC3();
	return NULL;
}