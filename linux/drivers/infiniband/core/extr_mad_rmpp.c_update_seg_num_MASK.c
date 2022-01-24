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
struct mad_rmpp_recv {scalar_t__ seg_num; struct ib_mad_recv_buf* cur_seg_buf; TYPE_1__* rmpp_wc; } ;
struct list_head {int dummy; } ;
struct ib_mad_recv_buf {int dummy; } ;
struct TYPE_2__ {struct list_head rmpp_list; } ;

/* Variables and functions */
 struct ib_mad_recv_buf* FUNC0 (struct list_head*,struct ib_mad_recv_buf*) ; 
 scalar_t__ FUNC1 (struct ib_mad_recv_buf*) ; 

__attribute__((used)) static void FUNC2(struct mad_rmpp_recv *rmpp_recv,
			   struct ib_mad_recv_buf *new_buf)
{
	struct list_head *rmpp_list = &rmpp_recv->rmpp_wc->rmpp_list;

	while (new_buf && (FUNC1(new_buf) == rmpp_recv->seg_num + 1)) {
		rmpp_recv->cur_seg_buf = new_buf;
		rmpp_recv->seg_num++;
		new_buf = FUNC0(rmpp_list, new_buf);
	}
}