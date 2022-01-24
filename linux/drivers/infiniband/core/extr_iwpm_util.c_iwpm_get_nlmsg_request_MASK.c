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
typedef  int /*<<< orphan*/  u8 ;
struct iwpm_nlmsg_request {int /*<<< orphan*/  sem; scalar_t__ err_code; scalar_t__ request_done; int /*<<< orphan*/  nl_client; int /*<<< orphan*/  nlmsg_seq; int /*<<< orphan*/  kref; int /*<<< orphan*/  inprocess_list; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iwpm_nlmsg_req_list ; 
 int /*<<< orphan*/  iwpm_nlmsg_req_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct iwpm_nlmsg_request* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

struct iwpm_nlmsg_request *FUNC8(__u32 nlmsg_seq,
					u8 nl_client, gfp_t gfp)
{
	struct iwpm_nlmsg_request *nlmsg_request = NULL;
	unsigned long flags;

	nlmsg_request = FUNC3(sizeof(struct iwpm_nlmsg_request), gfp);
	if (!nlmsg_request)
		return NULL;

	FUNC6(&iwpm_nlmsg_req_lock, flags);
	FUNC4(&nlmsg_request->inprocess_list, &iwpm_nlmsg_req_list);
	FUNC7(&iwpm_nlmsg_req_lock, flags);

	FUNC2(&nlmsg_request->kref);
	FUNC1(&nlmsg_request->kref);
	nlmsg_request->nlmsg_seq = nlmsg_seq;
	nlmsg_request->nl_client = nl_client;
	nlmsg_request->request_done = 0;
	nlmsg_request->err_code = 0;
	FUNC5(&nlmsg_request->sem, 1);
	FUNC0(&nlmsg_request->sem);
	return nlmsg_request;
}