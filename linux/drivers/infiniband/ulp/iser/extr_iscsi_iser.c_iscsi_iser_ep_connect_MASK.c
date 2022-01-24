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
struct sockaddr {int dummy; } ;
struct iser_conn {struct iscsi_endpoint* ep; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct iscsi_endpoint* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct iscsi_endpoint* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_endpoint*) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_conn*) ; 
 int FUNC4 (struct iser_conn*,int /*<<< orphan*/ *,struct sockaddr*,int) ; 
 struct iser_conn* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iscsi_endpoint *
FUNC6(struct Scsi_Host *shost, struct sockaddr *dst_addr,
		      int non_blocking)
{
	int err;
	struct iser_conn *iser_conn;
	struct iscsi_endpoint *ep;

	ep = FUNC1(0);
	if (!ep)
		return FUNC0(-ENOMEM);

	iser_conn = FUNC5(sizeof(*iser_conn), GFP_KERNEL);
	if (!iser_conn) {
		err = -ENOMEM;
		goto failure;
	}

	ep->dd_data = iser_conn;
	iser_conn->ep = ep;
	FUNC3(iser_conn);

	err = FUNC4(iser_conn, NULL, dst_addr, non_blocking);
	if (err)
		goto failure;

	return ep;
failure:
	FUNC2(ep);
	return FUNC0(err);
}