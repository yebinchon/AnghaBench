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
typedef  int /*<<< orphan*/  u32 ;
struct rvt_qp {int dummy; } ;
struct ib_other_headers {void** bth; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct rvt_qp *qp,
				     struct ib_other_headers *ohdr,
				     u32 bth0, u32 bth1, u32 bth2)
{
	ohdr->bth[0] = FUNC0(bth0);
	ohdr->bth[1] = FUNC0(bth1);
	ohdr->bth[2] = FUNC0(bth2);
}