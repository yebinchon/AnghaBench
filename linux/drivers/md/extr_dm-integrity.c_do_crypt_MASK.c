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
struct skcipher_request {int dummy; } ;
struct journal_completion {TYPE_1__* ic; } ;
struct TYPE_2__ {int /*<<< orphan*/  crypto_backoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  complete_journal_encrypt ; 
 int FUNC0 (struct skcipher_request*) ; 
 int FUNC1 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct journal_completion*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(bool encrypt, struct skcipher_request *req, struct journal_completion *comp)
{
	int r;
	FUNC5(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
				      complete_journal_encrypt, comp);
	if (FUNC3(encrypt))
		r = FUNC1(req);
	else
		r = FUNC0(req);
	if (FUNC3(!r))
		return false;
	if (FUNC3(r == -EINPROGRESS))
		return true;
	if (FUNC3(r == -EBUSY)) {
		FUNC6(&comp->ic->crypto_backoff);
		FUNC4(&comp->ic->crypto_backoff);
		return true;
	}
	FUNC2(comp->ic, "encrypt", r);
	return false;
}