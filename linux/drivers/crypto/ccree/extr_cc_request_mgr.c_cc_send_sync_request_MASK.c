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
struct device {int dummy; } ;
struct cc_req_mgr_handle {int /*<<< orphan*/  hw_lock; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_drvdata {int /*<<< orphan*/  hw_queue_avail; struct cc_req_mgr_handle* request_mgr_handle; } ;
struct cc_crypto_req {int /*<<< orphan*/  seq_compl; int /*<<< orphan*/ * user_arg; int /*<<< orphan*/  user_cb; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINPROGRESS ; 
 int FUNC0 (struct cc_drvdata*,struct cc_crypto_req*,struct cc_hw_desc*,unsigned int,int) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct cc_drvdata*,struct cc_req_mgr_handle*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct device* FUNC5 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  request_mgr_complete ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct cc_drvdata *drvdata,
			 struct cc_crypto_req *cc_req, struct cc_hw_desc *desc,
			 unsigned int len)
{
	int rc;
	struct device *dev = FUNC5(drvdata);
	struct cc_req_mgr_handle *mgr = drvdata->request_mgr_handle;

	FUNC6(&cc_req->seq_compl);
	cc_req->user_cb = request_mgr_complete;
	cc_req->user_arg = &cc_req->seq_compl;

	rc = FUNC1(dev);
	if (rc) {
		FUNC4(dev, "ssi_power_mgr_runtime_get returned %x\n", rc);
		return rc;
	}

	while (true) {
		FUNC8(&mgr->hw_lock);
		rc = FUNC3(drvdata, mgr, len + 1);

		if (!rc)
			break;

		FUNC9(&mgr->hw_lock);
		if (rc != -EAGAIN) {
			FUNC2(dev);
			return rc;
		}
		FUNC11(&drvdata->hw_queue_avail);
		FUNC7(&drvdata->hw_queue_avail);
	}

	rc = FUNC0(drvdata, cc_req, desc, len, true);
	FUNC9(&mgr->hw_lock);

	if (rc != -EINPROGRESS) {
		FUNC2(dev);
		return rc;
	}

	FUNC10(&cc_req->seq_compl);
	return 0;
}