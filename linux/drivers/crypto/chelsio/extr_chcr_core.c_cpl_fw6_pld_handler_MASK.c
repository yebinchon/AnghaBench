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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_async_request {int dummy; } ;
struct cpl_fw6_pld {int /*<<< orphan*/ * data; } ;
struct chcr_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;
struct adapter {TYPE_1__ chcr_stats; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int EBADMSG ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct crypto_async_request*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC6 (struct chcr_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct chcr_dev *dev,
			       unsigned char *input)
{
	struct crypto_async_request *req;
	struct cpl_fw6_pld *fw6_pld;
	u32 ack_err_status = 0;
	int error_status = 0;
	struct adapter *adap = FUNC6(dev);

	fw6_pld = (struct cpl_fw6_pld *)input;
	req = (struct crypto_async_request *)(uintptr_t)FUNC3(
						    fw6_pld->data[1]);

	ack_err_status =
		FUNC5(*(__be32 *)((unsigned char *)&fw6_pld->data[0] + 4));
	if (FUNC0(ack_err_status) || FUNC1(ack_err_status))
		error_status = -EBADMSG;
	/* call completion callback with failure status */
	if (req) {
		error_status = FUNC4(req, input, error_status);
	} else {
		FUNC7("Incorrect request address from the firmware\n");
		return -EFAULT;
	}
	if (error_status)
		FUNC2(&adap->chcr_stats.error);

	return 0;
}