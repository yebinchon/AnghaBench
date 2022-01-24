#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int size; struct tegra_bpmp_message* data; } ;
struct TYPE_3__ {int size; struct tegra_bpmp_message* data; } ;
struct tegra_bpmp_message {int challenge; int /*<<< orphan*/  reply; TYPE_2__ rx; TYPE_1__ tx; int /*<<< orphan*/  mrq; } ;
struct tegra_bpmp {int /*<<< orphan*/  dev; } ;
struct mrq_ping_response {int challenge; int /*<<< orphan*/  reply; TYPE_2__ rx; TYPE_1__ tx; int /*<<< orphan*/  mrq; } ;
struct mrq_ping_request {int challenge; int /*<<< orphan*/  reply; TYPE_2__ rx; TYPE_1__ tx; int /*<<< orphan*/  mrq; } ;
typedef  int /*<<< orphan*/  response ;
typedef  int /*<<< orphan*/  request ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  MRQ_PING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_bpmp_message*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct tegra_bpmp*,struct tegra_bpmp_message*) ; 

__attribute__((used)) static int FUNC8(struct tegra_bpmp *bpmp)
{
	struct mrq_ping_response response;
	struct mrq_ping_request request;
	struct tegra_bpmp_message msg;
	unsigned long flags;
	ktime_t start, end;
	int err;

	FUNC6(&request, 0, sizeof(request));
	request.challenge = 1;

	FUNC6(&response, 0, sizeof(response));

	FUNC6(&msg, 0, sizeof(msg));
	msg.mrq = MRQ_PING;
	msg.tx.data = &request;
	msg.tx.size = sizeof(request);
	msg.rx.data = &response;
	msg.rx.size = sizeof(response);

	FUNC5(flags);
	start = FUNC1();
	err = FUNC7(bpmp, &msg);
	end = FUNC1();
	FUNC4(flags);

	if (!err)
		FUNC0(bpmp->dev,
			"ping ok: challenge: %u, response: %u, time: %lld\n",
			request.challenge, response.reply,
			FUNC3(FUNC2(end, start)));

	return err;
}