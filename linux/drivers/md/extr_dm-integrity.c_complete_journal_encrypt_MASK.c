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
struct journal_completion {TYPE_1__* ic; } ;
struct crypto_async_request {struct journal_completion* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  crypto_backoff; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct journal_completion*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct crypto_async_request *req, int err)
{
	struct journal_completion *comp = req->data;
	if (FUNC4(err)) {
		if (FUNC3(err == -EINPROGRESS)) {
			FUNC0(&comp->ic->crypto_backoff);
			return;
		}
		FUNC2(comp->ic, "asynchronous encrypt", err);
	}
	FUNC1(comp);
}