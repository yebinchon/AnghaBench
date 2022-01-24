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
struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int dummy; } ;
struct ishtp_cl {int dummy; } ;
struct hbm_client_connect_request {int dummy; } ;
typedef  int /*<<< orphan*/  conn_req ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_CONNECT_REQ_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl*,int /*<<< orphan*/ ,struct hbm_client_connect_request*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_msg_hdr*,size_t const) ; 
 int FUNC2 (struct ishtp_device*,struct ishtp_msg_hdr*,struct hbm_client_connect_request*) ; 

int FUNC3(struct ishtp_device *dev, struct ishtp_cl *cl)
{
	struct ishtp_msg_hdr hdr;
	struct hbm_client_connect_request conn_req;
	const size_t len = sizeof(conn_req);

	FUNC1(&hdr, len);
	FUNC0(cl, CLIENT_CONNECT_REQ_CMD, &conn_req, len);

	return FUNC2(dev, &hdr, &conn_req);
}