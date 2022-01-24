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
struct isert_conn {int login_req_len; int /*<<< orphan*/  login_comp; struct iscsi_conn* conn; struct iser_rx_desc* login_req_buf; } ;
struct iser_rx_desc {void* data; int /*<<< orphan*/  iscsi_header; } ;
struct iscsi_login_req {int flags; void* isid; int /*<<< orphan*/  tsih; int /*<<< orphan*/  cid; int /*<<< orphan*/  exp_statsn; int /*<<< orphan*/  itt; int /*<<< orphan*/  cmdsn; int /*<<< orphan*/  max_version; int /*<<< orphan*/  min_version; } ;
struct iscsi_login {int leading_connection; int current_stage; scalar_t__ first_request; int /*<<< orphan*/ * req_buf; int /*<<< orphan*/ * req; void* tsih; void* cid; void* initial_exp_statsn; int /*<<< orphan*/  init_task_tag; void* cmd_sn; int /*<<< orphan*/ * isid; int /*<<< orphan*/  version_max; int /*<<< orphan*/  version_min; } ;
struct iscsi_conn {int /*<<< orphan*/  login_work; struct iscsi_login* conn_login; } ;

/* Variables and functions */
 int ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK ; 
 int ISCSI_HDR_LEN ; 
 int /*<<< orphan*/  MAX_KEY_VALUE_PAIRS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct isert_conn *isert_conn)
{
	struct iser_rx_desc *rx_desc = isert_conn->login_req_buf;
	int rx_buflen = isert_conn->login_req_len;
	struct iscsi_conn *conn = isert_conn->conn;
	struct iscsi_login *login = conn->conn_login;
	int size;

	FUNC5("conn %p\n", isert_conn);

	FUNC0(!login);

	if (login->first_request) {
		struct iscsi_login_req *login_req =
			(struct iscsi_login_req *)&rx_desc->iscsi_header;
		/*
		 * Setup the initial iscsi_login values from the leading
		 * login request PDU.
		 */
		login->leading_connection = (!login_req->tsih) ? 1 : 0;
		login->current_stage =
			(login_req->flags & ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK)
			 >> 2;
		login->version_min	= login_req->min_version;
		login->version_max	= login_req->max_version;
		FUNC6(login->isid, login_req->isid, 6);
		login->cmd_sn		= FUNC2(login_req->cmdsn);
		login->init_task_tag	= login_req->itt;
		login->initial_exp_statsn = FUNC2(login_req->exp_statsn);
		login->cid		= FUNC1(login_req->cid);
		login->tsih		= FUNC1(login_req->tsih);
	}

	FUNC6(&login->req[0], (void *)&rx_desc->iscsi_header, ISCSI_HDR_LEN);

	size = FUNC7(rx_buflen, MAX_KEY_VALUE_PAIRS);
	FUNC4("Using login payload size: %d, rx_buflen: %d "
		  "MAX_KEY_VALUE_PAIRS: %d\n", size, rx_buflen,
		  MAX_KEY_VALUE_PAIRS);
	FUNC6(login->req_buf, &rx_desc->data[0], size);

	if (login->first_request) {
		FUNC3(&isert_conn->login_comp);
		return;
	}
	FUNC8(&conn->login_work, 0);
}