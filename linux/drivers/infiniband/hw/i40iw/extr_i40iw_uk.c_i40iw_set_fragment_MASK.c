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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct i40iw_sge {int /*<<< orphan*/  stag; int /*<<< orphan*/  len; int /*<<< orphan*/  tag_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IWQPSQ_FRAG_LEN ; 
 int /*<<< orphan*/  I40IWQPSQ_FRAG_STAG ; 
 int /*<<< orphan*/  I40IWQPSQ_FRAG_TO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(u64 *wqe, u32 offset, struct i40iw_sge *sge)
{
	if (sge) {
		FUNC1(wqe, offset, FUNC0(sge->tag_off, I40IWQPSQ_FRAG_TO));
		FUNC1(wqe, (offset + 8),
			      (FUNC0(sge->len, I40IWQPSQ_FRAG_LEN) |
			       FUNC0(sge->stag, I40IWQPSQ_FRAG_STAG)));
	}
}