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
typedef  int u32 ;
struct intel_guc_ct {int /*<<< orphan*/  worker; int /*<<< orphan*/  lock; int /*<<< orphan*/  incoming_requests; } ;
struct ct_incoming_request {int /*<<< orphan*/  link; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ct_incoming_request* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_unbound_wq ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct intel_guc_ct *ct, const u32 *msg)
{
	u32 header = msg[0];
	u32 len = FUNC2(header);
	u32 msglen = len + 1; /* total message length including header */
	struct ct_incoming_request *request;
	unsigned long flags;

	FUNC1(FUNC3(header));

	request = FUNC4(sizeof(*request) + 4 * msglen, GFP_ATOMIC);
	if (FUNC10(!request)) {
		FUNC0("CT: dropping request %*ph\n", 4 * msglen, msg);
		return 0; /* XXX: -ENOMEM ? */
	}
	FUNC6(request->msg, msg, 4 * msglen);

	FUNC8(&ct->lock, flags);
	FUNC5(&request->link, &ct->incoming_requests);
	FUNC9(&ct->lock, flags);

	FUNC7(system_unbound_wq, &ct->worker);
	return 0;
}