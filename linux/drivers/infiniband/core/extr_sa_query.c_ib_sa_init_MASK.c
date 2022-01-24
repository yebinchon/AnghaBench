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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ib_nl_request_timeout ; 
 int /*<<< orphan*/  ib_nl_sa_request_seq ; 
 int /*<<< orphan*/  ib_nl_timed_work ; 
 int /*<<< orphan*/  ib_nl_wq ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  sa_client ; 
 int /*<<< orphan*/  tid ; 

int FUNC9(void)
{
	int ret;

	FUNC3(&tid, sizeof tid);

	FUNC2(&ib_nl_sa_request_seq, 0);

	ret = FUNC4(&sa_client);
	if (ret) {
		FUNC8("Couldn't register ib_sa client\n");
		goto err1;
	}

	ret = FUNC7();
	if (ret) {
		FUNC8("Couldn't initialize multicast handling\n");
		goto err2;
	}

	ib_nl_wq = FUNC1("ib_nl_sa_wq", WQ_MEM_RECLAIM);
	if (!ib_nl_wq) {
		ret = -ENOMEM;
		goto err3;
	}

	FUNC0(&ib_nl_timed_work, ib_nl_request_timeout);

	return 0;

err3:
	FUNC6();
err2:
	FUNC5(&sa_client);
err1:
	return ret;
}