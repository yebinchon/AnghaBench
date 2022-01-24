#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct stm32_cryp {TYPE_1__* out_sg; int /*<<< orphan*/  out_walk; } ;
struct TYPE_5__ {scalar_t__ length; } ;

/* Variables and functions */
 scalar_t__ _walked_out ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static u32 *FUNC5(struct stm32_cryp *cryp, u32 *dst,
				unsigned int n)
{
	FUNC0(&cryp->out_walk, n);

	if (FUNC4(cryp->out_sg->length == _walked_out)) {
		cryp->out_sg = FUNC2(cryp->out_sg);
		if (cryp->out_sg) {
			FUNC1(&cryp->out_walk, cryp->out_sg);
			return (FUNC3(cryp->out_sg) + _walked_out);
		}
	}

	return (u32 *)((u8 *)dst + n);
}