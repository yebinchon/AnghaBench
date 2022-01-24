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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct arpc {struct arpc* req; int /*<<< orphan*/  response_received; int /*<<< orphan*/  data; int /*<<< orphan*/  size; int /*<<< orphan*/  type; void* resp; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ARPC_OUT_SIZE_MAX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct arpc*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static struct arpc *FUNC6(void *payload, u16 size, u8 type)
{
	struct arpc *rpc;

	if (size + sizeof(*rpc->req) > ARPC_OUT_SIZE_MAX)
		return NULL;

	rpc = FUNC4(sizeof(*rpc), GFP_KERNEL);
	if (!rpc)
		return NULL;

	FUNC0(&rpc->list);
	rpc->req = FUNC4(sizeof(*rpc->req) + size, GFP_KERNEL);
	if (!rpc->req)
		goto err_free_rpc;

	rpc->resp = FUNC4(sizeof(*rpc->resp), GFP_KERNEL);
	if (!rpc->resp)
		goto err_free_req;

	rpc->req->type = type;
	rpc->req->size = FUNC1(sizeof(*rpc->req) + size);
	FUNC5(rpc->req->data, payload, size);

	FUNC2(&rpc->response_received);

	return rpc;

err_free_req:
	FUNC3(rpc->req);
err_free_rpc:
	FUNC3(rpc);

	return NULL;
}