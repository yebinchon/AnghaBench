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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_tls_data {int dummy; } ;
struct chtls_dev {int /*<<< orphan*/  tids; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (struct cpl_tls_data*) ; 
 int /*<<< orphan*/  chtls_recv_pdu ; 
 struct cpl_tls_data* FUNC1 (struct sk_buff*) ; 
 struct sock* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct chtls_dev *cdev, struct sk_buff *skb)
{
	struct cpl_tls_data *req = FUNC1(skb);
	unsigned int hwtid = FUNC0(req);
	struct sock *sk;

	sk = FUNC2(cdev->tids, hwtid);
	if (FUNC6(!sk)) {
		FUNC3("can't find conn. for hwtid %u.\n", hwtid);
		return -EINVAL;
	}
	FUNC5(skb, NULL);
	FUNC4(chtls_recv_pdu, sk, skb);
	return 0;
}