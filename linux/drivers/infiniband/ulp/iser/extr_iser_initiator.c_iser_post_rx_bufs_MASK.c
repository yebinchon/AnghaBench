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
struct ib_conn {int post_recv_buf_count; } ;
struct iser_conn {int /*<<< orphan*/  min_posted_rx; struct ib_conn ib_conn; } ;
struct iscsi_session {scalar_t__ discovery_sess; } ;
struct iscsi_hdr {int flags; int /*<<< orphan*/  opcode; } ;
struct iscsi_conn {struct iscsi_session* session; struct iser_conn* dd_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ISCSI_FULL_FEATURE_PHASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (struct iser_conn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iscsi_conn *conn, struct iscsi_hdr *req)
{
	struct iser_conn *iser_conn = conn->dd_data;
	struct ib_conn *ib_conn = &iser_conn->ib_conn;
	struct iscsi_session *session = conn->session;

	FUNC1("req op %x flags %x\n", req->opcode, req->flags);
	/* check if this is the last login - going to full feature phase */
	if ((req->flags & ISCSI_FULL_FEATURE_PHASE) != ISCSI_FULL_FEATURE_PHASE)
		return 0;

	/*
	 * Check that there is one posted recv buffer
	 * (for the last login response).
	 */
	FUNC0(ib_conn->post_recv_buf_count != 1);

	if (session->discovery_sess) {
		FUNC2("Discovery session, re-using login RX buffer\n");
		return 0;
	} else
		FUNC2("Normal session, posting batch of RX %d buffers\n",
			  iser_conn->min_posted_rx);

	/* Initial post receive buffers */
	if (FUNC3(iser_conn, iser_conn->min_posted_rx))
		return -ENOMEM;

	return 0;
}