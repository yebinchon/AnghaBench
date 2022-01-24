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
struct ucma_multicast {int /*<<< orphan*/  list; int /*<<< orphan*/  id; int /*<<< orphan*/  addr; int /*<<< orphan*/  uid; int /*<<< orphan*/  join_state; } ;
struct ucma_file {int /*<<< orphan*/  mut; } ;
struct ucma_context {int /*<<< orphan*/  cm_id; } ;
struct sockaddr {int dummy; } ;
struct rdma_ucm_join_mcast {scalar_t__ addr_size; scalar_t__ join_flags; int /*<<< orphan*/  response; int /*<<< orphan*/  uid; int /*<<< orphan*/  id; int /*<<< orphan*/  addr; } ;
struct rdma_ucm_create_id_resp {int /*<<< orphan*/  id; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  resp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FULLMEMBER_JOIN ; 
 scalar_t__ FUNC1 (struct ucma_context*) ; 
 int FUNC2 (struct ucma_context*) ; 
 scalar_t__ RDMA_MC_JOIN_FLAG_FULLMEMBER ; 
 scalar_t__ RDMA_MC_JOIN_FLAG_SENDONLY_FULLMEMBER ; 
 int /*<<< orphan*/  SENDONLY_FULLMEMBER_JOIN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct rdma_ucm_create_id_resp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ucma_multicast*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sockaddr*,scalar_t__) ; 
 int /*<<< orphan*/  multicast_table ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct sockaddr*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ,struct ucma_multicast*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct ucma_multicast* FUNC13 (struct ucma_context*) ; 
 int /*<<< orphan*/  FUNC14 (struct ucma_multicast*) ; 
 struct ucma_context* FUNC15 (struct ucma_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ucma_context*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ucma_multicast*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC19(struct ucma_file *file,
				 struct rdma_ucm_join_mcast *cmd,  int out_len)
{
	struct rdma_ucm_create_id_resp resp;
	struct ucma_context *ctx;
	struct ucma_multicast *mc;
	struct sockaddr *addr;
	int ret;
	u8 join_state;

	if (out_len < sizeof(resp))
		return -ENOSPC;

	addr = (struct sockaddr *) &cmd->addr;
	if (cmd->addr_size != FUNC9(addr))
		return -EINVAL;

	if (cmd->join_flags == RDMA_MC_JOIN_FLAG_FULLMEMBER)
		join_state = FUNC0(FULLMEMBER_JOIN);
	else if (cmd->join_flags == RDMA_MC_JOIN_FLAG_SENDONLY_FULLMEMBER)
		join_state = FUNC0(SENDONLY_FULLMEMBER_JOIN);
	else
		return -EINVAL;

	ctx = FUNC15(file, cmd->id);
	if (FUNC1(ctx))
		return FUNC2(ctx);

	FUNC7(&file->mut);
	mc = FUNC13(ctx);
	if (!mc) {
		ret = -ENOMEM;
		goto err1;
	}
	mc->join_state = join_state;
	mc->uid = cmd->uid;
	FUNC6(&mc->addr, addr, cmd->addr_size);
	ret = FUNC10(ctx->cm_id, (struct sockaddr *)&mc->addr,
				  join_state, mc);
	if (ret)
		goto err2;

	resp.id = mc->id;
	if (FUNC3(FUNC12(cmd->response),
			 &resp, sizeof(resp))) {
		ret = -EFAULT;
		goto err3;
	}

	FUNC18(&multicast_table, mc->id, mc, 0);

	FUNC8(&file->mut);
	FUNC16(ctx);
	return 0;

err3:
	FUNC11(ctx->cm_id, (struct sockaddr *) &mc->addr);
	FUNC14(mc);
err2:
	FUNC17(&multicast_table, mc->id);
	FUNC5(&mc->list);
	FUNC4(mc);
err1:
	FUNC8(&file->mut);
	FUNC16(ctx);
	return ret;
}